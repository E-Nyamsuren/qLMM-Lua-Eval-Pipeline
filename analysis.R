# [SC] cleaning the environment
rm(list=ls())

######################################################################
## [SC][TODO] indicate which files to include in analysis

# [SC] An evaluation summary table from execution of the scripts
evalSumFiles <- c("EvalSummary_1.csv", "EvalSummary_2.csv")
# [SC] Time taken for the language models to generate the scripts
locFiles <- c("LocCount_1.csv")
# [SC] Time taken for the language models to generate the scripts
rtFiles <- c("ResponseTimes_1.csv", "ResponseTimes_2.csv")

## [SC][TODO] indicate which files to include in analysis
######################################################################

# [SC] Load necessary packages
libraries <- c("rstudioapi", "ggplot2", "patchwork", "ggpattern", "jsonlite", "autoReg", "car", "pscl"
               , "rms"
               , "devtools", "scales", "dplyr", "ggradar", "tibble")
for(mylibrary in libraries){
  ## [SC] installing gplots package
  if (!(mylibrary %in% rownames(installed.packages()))) {
    if (mylibrary == "ggradar"){
      devtools::install_github("ricardo-bion/ggradar", dependencies = TRUE)
    }
    else {
      install.packages(mylibrary)
    }
  }
  library(mylibrary, character.only = TRUE)
}

# [SC] set the working directory to the parent folder of this script
rootpath <- dirname(rstudioapi::getActiveDocumentContext()$path)
setwd(rootpath)

# [SC] set the working directory to the parent folder of this script
evalOutputPath <- paste0(rootpath, "/evalOutput/")
genOutputPath <- paste0(rootpath, "/genOutput/")
benchPath <- paste0(rootpath, "/benchmarks/")

# [SC] a function to load and prepare data
# -- lang: the value is either "lua" or "py"; indicates which language data is to be analyzed
# -- return: a data.frame which contains RT, LOC (for Lua), and code evaluation data
loadData <- function(lang="lua"){
  # [SC] load evaluation summaries
  evalDF <- NULL
  for (evalFile in evalSumFiles){
    tempDF <- read.csv(paste0(evalOutputPath, lang, evalFile)
                       , stringsAsFactors=FALSE, header=TRUE
                       , na.strings=c("", " ", "NA"))
    
    if(is.null(evalDF)) { evalDF = tempDF }
    else { evalDF = rbind(evalDF, tempDF) }
  }
  print(paste0("==== Loaded evaluation summary with ", nrow(evalDF), " rows."))
  # [SC][TODO] remove
  for(colname in colnames(evalDF)){
    evalDF[,colname] <- trimws(evalDF[,colname])
  }
  
  # [SC] load inference time data
  rtDF <- NULL
  for (rtFile in rtFiles){
    tempDF <- read.csv(paste0(genOutputPath, lang, rtFile)
                       , stringsAsFactors=FALSE, header=TRUE
                       , na.strings=c("", " ", "NA"))
    
    if(is.null(rtDF)) { rtDF = tempDF }
    else { rtDF = rbind(rtDF, tempDF) }
  }
  print(paste0("==== Loaded inference time data with ", nrow(rtDF), " rows."))
  # [SC] merge the two datasets into one dataframe
  evalDF <- merge(rtDF, evalDF, by=c("bench", "model", "bench_item", "pass_k", "pass_i"))
  print(paste0("==== Merged the two dataframes to ", nrow(evalDF), " rows."))
  
  # [SC] load line of code counts for the Lua code
  if (lang == "lua"){
    locDF <- NULL
    for (locFile in locFiles){
      tempDF <- read.csv(paste0(evalOutputPath, lang, locFile)
                         , stringsAsFactors=FALSE, header=TRUE
                         , na.strings=c("", " ", "NA"))
      
      if(is.null(locDF)) { locDF = tempDF }
      else { locDF = rbind(locDF, tempDF) }
    }
    print(paste0("==== Loaded line of code data with ", nrow(locDF), " rows."))
    # [SC] merge the two datasets into one dataframe
    evalDF <- merge(locDF, evalDF, by=c("bench", "model", "bench_item", "pass_k", "pass_i"), all=TRUE)
    print(paste0("==== Merged the two dataframes to ", nrow(evalDF), " rows."))
  }
  
  # [SC] ensure 0 and 1 flags are numeric
  for(colname in c("pass","ft","rte","se","te","oe","pass_k","pass_i")){
    evalDF[,colname] <- as.numeric(evalDF[,colname])
  }
  
  print(paste0("Total inference time: ", round(sum(evalDF$rt), 0), " seconds or ", round(sum(evalDF$rt)/60, 0), " minutes or ", round(sum(evalDF$rt)/3600, 1), " hours"))
  
  return(evalDF)
}


# [SC] a function to calculate standard error
se <- function(x) { 
  x <- x[!is.na(x)]
  
  return(sd(x)/sqrt(length(x)))
}

# [SC] a function to analyze IT
analyzeITShort <- function(targetDF, passK=1){
  # [TODO]
  # targetDF <- subset(targetDF, !(mFamily == "CodeGemma" & qbits != "16"))
  
  ylimV <- 75
  # ylimV <- 90
  allPlots <- NULL
  
  tempDF <- targetDF[targetDF$pass == "1",]
  # [SC] calculate mean IT by model X qbits
  meanByQuDF <- aggregate(rt ~ mFamily + model + qbits, tempDF, mean)
  meanByQuDF$rt <- round(meanByQuDF$rt, 2)
  # [SC] calculate IT standard error by model X Qbits
  seByQuDF <- aggregate(rt ~ mFamily + model + qbits, tempDF, se)
  seByQuDF$rt <- round(seByQuDF$rt, 2)
  names(seByQuDF)[names(seByQuDF)=="rt"] <- "se"
  meanByQuDF <- merge(meanByQuDF, seByQuDF)
  # [SC] draw the line plot
  qbitPlot <- ggplot(meanByQuDF, aes(x=qbits, y=rt, group=mFamily)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=rt-se, ymax=rt+se, color=mFamily)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Mean IT by models (pass@", passK, ")"), x="qbits", y = "Seconds") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2), 
               color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  allPlots <- qbitPlot
  print(meanByQuDF[,c("model","qbits","rt")])
  
  # [SC] calculate mean IT by benchmark X qbits
  meanByBenchDF <- aggregate(rt ~ bench + qbits, tempDF, mean)
  meanByBenchDF$rt <- round(meanByBenchDF$rt, 2)
  # [SC] calculate IT standard error by benchmark X Qbits
  seByBenchDF <- aggregate(rt ~ bench + qbits, tempDF, se)
  seByBenchDF$rt <- round(seByBenchDF$rt, 2)
  names(seByBenchDF)[names(seByBenchDF)=="rt"] <- "se"
  meanByBenchDF <- merge(meanByBenchDF, seByBenchDF)
  # [SC] draw the line plot
  benchPlot <- ggplot(meanByBenchDF, aes(x=qbits, y=rt, group=bench)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=rt-se, ymax=rt+se, color=bench)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Mean IT by benchmarks (pass@", passK, ")"), x="qbits", y = "Seconds") +
    theme(legend.title=element_blank()
          , legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) # + guides(linetype = guide_legend(nrow = 2), 
      #         color = guide_legend(nrow = 2), 
      #         shape = guide_legend(nrow = 2))
  allPlots <- allPlots + benchPlot
  print(meanByBenchDF[,c("bench","qbits","rt")])
  
  tempDF <- targetDF[targetDF$pass == "0",]
  # [SC] calculate mean IT by model X qbits
  meanByQuDF <- aggregate(rt ~ mFamily + model + qbits, tempDF, mean)
  meanByQuDF$rt <- round(meanByQuDF$rt, 2)
  # [SC] calculate IT standard error by model X Qbits
  seByQuDF <- aggregate(rt ~ mFamily + model + qbits, tempDF, se)
  seByQuDF$rt <- round(seByQuDF$rt, 2)
  names(seByQuDF)[names(seByQuDF)=="rt"] <- "se"
  meanByQuDF <- merge(meanByQuDF, seByQuDF)
  # [SC] draw the line plot
  qbitPlot <- ggplot(meanByQuDF, aes(x=qbits, y=rt, group=mFamily)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=rt-se, ymax=rt+se, color=mFamily)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Mean IT by models (fail@", passK, ")"), x="qbits", y = "Seconds") +
    theme(legend.title=element_blank()
          , legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2), 
               color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  allPlots <- allPlots + qbitPlot
  print(meanByQuDF[,c("model","qbits","rt")])
  
  # [SC] calculate mean IT by benchmark X qbits
  meanByBenchDF <- aggregate(rt ~ bench + qbits, tempDF, mean)
  meanByBenchDF$rt <- round(meanByBenchDF$rt, 2)
  # [SC] calculate IT standard error by benchmark X Qbits
  seByBenchDF <- aggregate(rt ~ bench + qbits, tempDF, se)
  seByBenchDF$rt <- round(seByBenchDF$rt, 2)
  names(seByBenchDF)[names(seByBenchDF)=="rt"] <- "se"
  meanByBenchDF <- merge(meanByBenchDF, seByBenchDF)
  # [SC] draw the line plot
  benchPlot <- ggplot(meanByBenchDF, aes(x=qbits, y=rt, group=bench)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=rt-se, ymax=rt+se, color=bench)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Mean IT by benchmarks (fail@", passK, ")"), x="qbits", y = "Seconds") +
    theme(legend.title=element_blank()
          , legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) # + guides(linetype = guide_legend(nrow = 2), 
      #         color = guide_legend(nrow = 2), 
      #         shape = guide_legend(nrow = 2))
  allPlots <- allPlots + benchPlot
  print(meanByBenchDF[,c("bench","qbits","rt")])
  
  print(allPlots + plot_layout(nrow = 2, byrow = FALSE, tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  
  allPlots <- NULL
  plotCount <- 0
  ylimV <- 115
  
  tempDF <- targetDF[targetDF$pass == "1",]
  # [SC] calculate mean IT by benchmark X model X qbits
  meanByModelDF <- aggregate(rt ~ bench + mFamily + model + qbits, tempDF, mean)
  meanByModelDF$rt <- round(meanByModelDF$rt, 2)
  # [SC] calculate IT standard error by benchmark X model X Qbits
  seByModelDF <- aggregate(rt ~ bench + mFamily + model + qbits, tempDF, se)
  seByModelDF$rt <- round(seByModelDF$rt, 2)
  names(seByModelDF)[names(seByModelDF)=="rt"] <- "se"
  meanByModelDF <- merge(meanByModelDF, seByModelDF)
  # [SC] plot separate graphs by quantization bits
  qbitsV <- sort(unique(meanByModelDF$qbits))
  for (qbit in qbitsV){
    qbitDF <- subset(meanByModelDF, meanByModelDF$qbits == qbit)
    rtPlot <- ggplot(qbitDF, aes(x=bench, y=rt, group=mFamily)) + ylim(0, ylimV) +
      geom_errorbar(aes(x=bench, ymin=rt-se, ymax=rt+se, color=mFamily)
                    , width=0.1, alpha=1, linewidth=1) +
      geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
      geom_point(aes(shape=mFamily, color=mFamily), size=3) +
      labs(title=paste0("Mean IT of ", qbit, "-bit models (pass@", passK, ")"), x="", y = "Seconds") +
      theme(legend.title=element_blank()
            #, legend.position = "top"
            , axis.text = element_text(size = 12),
            axis.title = element_text(size = 14),
            legend.text = element_text(size = 12),
            plot.title = element_text(size = 16)
      ) # + guides(linetype = guide_legend(nrow = 2), 
      #            color = guide_legend(nrow = 2), 
      #            shape = guide_legend(nrow = 2))
    if (is.null(allPlots)) { allPlots <- rtPlot }
    else { allPlots <- allPlots + rtPlot }
    plotCount <- plotCount + 1
  }
  
  tempDF <- targetDF[targetDF$pass == "0",]
  # [SC] calculate mean IT by benchmark X model X qbits
  meanByModelDF <- aggregate(rt ~ bench + mFamily + model + qbits, tempDF, mean)
  meanByModelDF$rt <- round(meanByModelDF$rt, 2)
  # [SC] calculate IT standard error by benchmark X model X Qbits
  seByModelDF <- aggregate(rt ~ bench + mFamily + model + qbits, tempDF, se)
  seByModelDF$rt <- round(seByModelDF$rt, 2)
  names(seByModelDF)[names(seByModelDF)=="rt"] <- "se"
  meanByModelDF <- merge(meanByModelDF, seByModelDF)
  # [SC] plot separate graphs by quantization bits
  qbitsV <- sort(unique(meanByModelDF$qbits))
  for (qbit in qbitsV){
    qbitDF <- subset(meanByModelDF, meanByModelDF$qbits == qbit)
    rtPlot <- ggplot(qbitDF, aes(x=bench, y=rt, group=mFamily)) + ylim(0, ylimV) +
      geom_errorbar(aes(x=bench, ymin=rt-se, ymax=rt+se, color=mFamily)
                    , width=0.1, alpha=1, linewidth=1) +
      geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
      geom_point(aes(shape=mFamily, color=mFamily), size=3) +
      labs(title=paste0("Mean IT of ", qbit, "-bit models (fail@", passK, ")"), x="", y = "Seconds") +
      theme(legend.title=element_blank()
            # , legend.position = "top"
            , axis.text = element_text(size = 12),
            axis.title = element_text(size = 14),
            legend.text = element_text(size = 12),
            plot.title = element_text(size = 16)
      ) # + guides(linetype = guide_legend(nrow = 2), 
                 # color = guide_legend(nrow = 2), 
                 # shape = guide_legend(nrow = 2))
    if (is.null(allPlots)) { allPlots <- rtPlot }
    else { allPlots <- allPlots + rtPlot }
    plotCount <- plotCount + 1
  }
  
  print(allPlots + plot_layout(ncol = 2, byrow = FALSE, tag_level = 'new') + plot_annotation(tag_levels = c('a')))
}

# [SC] a function to analyze IT
analyzeIT <- function(targetDF, msg="", printF=TRUE){
  # [TODO]
  # targetDF <- subset(targetDF, !(mFamily == "CodeGemma" & qbits != "16"))
  
  ylimV <- 115
  allPlots <- NULL
  plotCount <- 0
  
  # [SC] calculate mean IT by model X qbits
  meanByQuDF <- aggregate(rt ~ mFamily + model + qbits, targetDF, mean)
  meanByQuDF$rt <- round(meanByQuDF$rt, 2)
  # [SC] calculate IT standard error by model X Qbits
  seByQuDF <- aggregate(rt ~ mFamily + model + qbits, targetDF, se)
  seByQuDF$rt <- round(seByQuDF$rt, 2)
  names(seByQuDF)[names(seByQuDF)=="rt"] <- "se"
  meanByQuDF <- merge(meanByQuDF, seByQuDF)
  # [SC] draw the line plot
  qbitPlot <- ggplot(meanByQuDF, aes(x=qbits, y=rt, group=mFamily)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=rt-se, ymax=rt+se, color=mFamily)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Mean IT by models", msg), x="qbits", y = "Seconds") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2), 
               color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  allPlots <- qbitPlot
  plotCount <- plotCount + 1
  
  # [SC] calculate mean IT by benchmark X qbits
  meanByBenchDF <- aggregate(rt ~ bench + qbits, targetDF, mean)
  meanByBenchDF$rt <- round(meanByBenchDF$rt, 2)
  # [SC] calculate IT standard error by benchmark X Qbits
  seByBenchDF <- aggregate(rt ~ bench + qbits, targetDF, se)
  seByBenchDF$rt <- round(seByBenchDF$rt, 2)
  names(seByBenchDF)[names(seByBenchDF)=="rt"] <- "se"
  meanByBenchDF <- merge(meanByBenchDF, seByBenchDF)
  # [SC] draw the line plot
  benchPlot <- ggplot(meanByBenchDF, aes(x=qbits, y=rt, group=bench)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=rt-se, ymax=rt+se, color=bench)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Mean IT by benchmarks", msg), x="qbits", y = "Seconds") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2), 
               color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  allPlots <- allPlots + benchPlot
  plotCount <- plotCount + 1
  
  if (printF) {
    print(allPlots + plot_layout(nrow = ceiling(plotCount/2), tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  }
  
  allPlots <- NULL
  plotCount <- 0
  
  # [SC] calculate mean IT by benchmark X model X qbits
  meanByModelDF <- aggregate(rt ~ bench + mFamily + model + qbits, targetDF, mean)
  meanByModelDF$rt <- round(meanByModelDF$rt, 2)
  # [SC] calculate IT standard error by benchmark X model X Qbits
  seByModelDF <- aggregate(rt ~ bench + mFamily + model + qbits, targetDF, se)
  seByModelDF$rt <- round(seByModelDF$rt, 2)
  names(seByModelDF)[names(seByModelDF)=="rt"] <- "se"
  meanByModelDF <- merge(meanByModelDF, seByModelDF)
  # [SC] plot separate graphs by quantization bits
  qbitsV <- sort(unique(meanByModelDF$qbits))
  for (qbit in qbitsV){
    qbitDF <- subset(meanByModelDF, meanByModelDF$qbits == qbit)
    
    rtPlot <- ggplot(qbitDF, aes(x=bench, y=rt, group=mFamily)) + ylim(0, ylimV) +
      geom_errorbar(aes(x=bench, ymin=rt-se, ymax=rt+se, color=mFamily)
                    , width=0.1, alpha=1, linewidth=1) +
      geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
      geom_point(aes(shape=mFamily, color=mFamily), size=3) +
      labs(title=paste0("Mean IT of ", qbit, "-bit models", msg), x="", y = "Seconds") +
      theme(legend.title=element_blank(), legend.position = "top",
            axis.text = element_text(size = 12),
            axis.title = element_text(size = 14),
            legend.text = element_text(size = 12),
            plot.title = element_text(size = 16)
      ) + guides(linetype = guide_legend(nrow = 2), 
                 color = guide_legend(nrow = 2), 
                 shape = guide_legend(nrow = 2))
    if (is.null(allPlots)) { allPlots <- rtPlot }
    else { allPlots <- allPlots + rtPlot }
    plotCount <- plotCount + 1
  }
  
  if (printF) {
    print(allPlots + plot_layout(nrow = ceiling(plotCount/2), tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  }
}

lmIT <- function(targetDF){
  # [TODO] completely excluding CodeGemma data
  targetDF <- subset(targetDF, !(mFamily == "CodeGemma" & qbits != "16"))
  
  mylm <- lm(rt ~ pass + bench + qbits + mFamily, targetDF)
  print(summary(mylm))
  print(vif(mylm))
  
  # [SC] most additional interactions come from explaining the skewness of CodeQwen IT
  fit <- lm(rt ~ pass + bench + qbits + mFamily 
            + qbits:mFamily # [SC] used
            + qbits:bench # [SC] used
            + qbits:pass # [SC] used
            + pass:mFamily # [SC] used
            + pass:bench # [SC] used
            + bench:mFamily # [SC] used
            , targetDF)
  # [SC] do stepwise backward elimination
  # optLm <- step(fit, trace=1)
  print(summary(fit))

  # [SC] optLm has both lower AIC and BIC but not by much
  # [SC] since explanatory power is more desired than predictive power, mylm should suffice
  print(AIC(mylm))
  print(AIC(fit))
  print(BIC(mylm))
  print(BIC(fit))
}


# [SC] a function to analyze IT
analyzeLocShort <- function(targetDF, passK=1){
  ylimV <- 17
  myplots <- list()
  
  tempDF <- targetDF[targetDF$pass == "1",]
  # [SC] calculate mean LOC by model X qbits
  meanByQuDF <- aggregate(loc ~ mFamily + model + qbits, tempDF, mean)
  meanByQuDF$loc <- round(meanByQuDF$loc, 2)
  # [SC] calculate LOC standard error by model X Qbits
  seByQuDF <- aggregate(loc ~ mFamily + model + qbits, tempDF, se)
  seByQuDF$loc <- round(seByQuDF$loc, 2)
  names(seByQuDF)[names(seByQuDF)=="loc"] <- "se"
  meanByQuDF <- merge(meanByQuDF, seByQuDF)
  # [SC] draw the line plot
  qbitPlot <- ggplot(meanByQuDF, aes(x=qbits, y=loc, group=mFamily)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=loc-se, ymax=loc+se, color=mFamily)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Mean LOC by models (pass@", passK, ")"), x="qbits", y = "Lines of code") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  allPlots <- qbitPlot
  
  # [SC] calculate mean IT by benchmark X qbits
  meanByBenchDF <- aggregate(loc ~ bench + qbits, tempDF, mean)
  meanByBenchDF$loc <- round(meanByBenchDF$loc, 2)
  # [SC] calculate IT standard error by benchmark X Qbits
  seByBenchDF <- aggregate(loc ~ bench + qbits, tempDF, se)
  seByBenchDF$loc <- round(seByBenchDF$loc, 2)
  names(seByBenchDF)[names(seByBenchDF)=="loc"] <- "se"
  meanByBenchDF <- merge(meanByBenchDF, seByBenchDF)
  # [SC] draw the line plot
  benchPlot <- ggplot(meanByBenchDF, aes(x=qbits, y=loc, group=bench)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=loc-se, ymax=loc+se, color=bench)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Mean LOC by benchmarks (pass@", passK, ")"), x="qbits", y = "Lines of code") +
    theme(legend.title=element_blank()
          , legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) # + guides(color = guide_legend(nrow = 2), 
      #         shape = guide_legend(nrow = 2))
  allPlots <- allPlots + benchPlot
  
  
  tempDF <- targetDF[targetDF$pass == "0",]
  # [SC] calculate mean LOC by model X qbits
  meanByQuDF <- aggregate(loc ~ mFamily + model + qbits, tempDF, mean)
  meanByQuDF$loc <- round(meanByQuDF$loc, 2)
  # [SC] calculate LOC standard error by model X Qbits
  seByQuDF <- aggregate(loc ~ mFamily + model + qbits, tempDF, se)
  seByQuDF$loc <- round(seByQuDF$loc, 2)
  names(seByQuDF)[names(seByQuDF)=="loc"] <- "se"
  meanByQuDF <- merge(meanByQuDF, seByQuDF)
  # [SC] draw the line plot
  qbitPlot <- ggplot(meanByQuDF, aes(x=qbits, y=loc, group=mFamily)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=loc-se, ymax=loc+se, color=mFamily)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Mean LOC by models (fail@", passK, ")"), x="qbits", y = "Lines of code") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  allPlots <- allPlots + qbitPlot
  
  # [SC] calculate mean IT by benchmark X qbits
  meanByBenchDF <- aggregate(loc ~ bench + qbits, tempDF, mean)
  meanByBenchDF$loc <- round(meanByBenchDF$loc, 2)
  # [SC] calculate IT standard error by benchmark X Qbits
  seByBenchDF <- aggregate(loc ~ bench + qbits, tempDF, se)
  seByBenchDF$loc <- round(seByBenchDF$loc, 2)
  names(seByBenchDF)[names(seByBenchDF)=="loc"] <- "se"
  meanByBenchDF <- merge(meanByBenchDF, seByBenchDF)
  # [SC] draw the line plot
  benchPlot <- ggplot(meanByBenchDF, aes(x=qbits, y=loc, group=bench)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=loc-se, ymax=loc+se, color=bench)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Mean LOC by benchmarks (fail@", passK, ")"), x="qbits", y = "Lines of code") +
    theme(legend.title=element_blank()
          , legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) # + guides(color = guide_legend(nrow = 2), 
      #         shape = guide_legend(nrow = 2))
  allPlots <- allPlots + benchPlot
  print(allPlots + plot_layout(nrow = 2, byrow = FALSE, tag_level = 'new') + plot_annotation(tag_levels = c('a')))


  tempDF <- targetDF[targetDF$pass == "1",]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
    labs(title=paste0("LoC/It scatterplot (pass@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") +
      theme(legend.title=element_blank(), legend.position = "top",
            axis.text = element_text(size = 12),
            axis.title = element_text(size = 14),
            legend.text = element_text(size = 12),
            plot.title = element_text(size = 16)
      ) + guides(color = guide_legend(nrow = 2), 
                 shape = guide_legend(nrow = 2))
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- scatterPlot
  
  tempDF <- targetDF[targetDF$pass == "0",]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
  labs(title=paste0("LoC/It scatterplot (fail@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") + 
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- allPlots + scatterPlot
  print(allPlots + plot_layout(nrow = 1, tag_level = 'new') + plot_annotation(tag_levels = c('a')))

  
  tempDF <- targetDF[targetDF$pass == "1" & targetDF$qbits==2,]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
    labs(title=paste0("2 bit (pass@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") +
    theme(legend.title=element_blank(),
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    )
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- scatterPlot
  
  tempDF <- targetDF[targetDF$pass == "1" & targetDF$qbits==4,]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
    labs(title=paste0("4 bit (pass@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") +
    theme(legend.title=element_blank(),
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    )
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- allPlots + scatterPlot
  
  tempDF <- targetDF[targetDF$pass == "1" & targetDF$qbits==8,]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
    labs(title=paste0("8 bit (pass@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") +
    theme(legend.title=element_blank(),
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    )
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- allPlots + scatterPlot
  
  
  tempDF <- targetDF[targetDF$pass == "0" & targetDF$qbits==2,]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
    labs(title=paste0("2 bit (fail@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") +
    theme(legend.title=element_blank(),
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    )
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- allPlots + scatterPlot
  
  tempDF <- targetDF[targetDF$pass == "0" & targetDF$qbits==4,]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
    labs(title=paste0("4 bit (fail@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") +
    theme(legend.title=element_blank(),
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    )
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- allPlots + scatterPlot
  
  tempDF <- targetDF[targetDF$pass == "0" & targetDF$qbits==8,]
  scatterPlot <- 
    ggplot(tempDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point() + xlim(0, 50) + ylim(0, 175) +
    labs(title=paste0("8 bit (fail@", passK, ")"), x="Lines of code", y = "Inference time (seconds)") +
    theme(legend.title=element_blank(),
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    )
  # + geom_smooth(method=lm)
  print(cor.test(tempDF$rt, tempDF$loc, alternative="two.sided"))
  allPlots <- allPlots + scatterPlot
  
  print(allPlots + plot_layout(nrow = 2, tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  
  return(myplots)
}

# [SC] a function to analyze IT
analyzeLoc <- function(targetDF, msg="", printF=TRUE){
  ylimV <- 30
  plotCount <- 0
  myplots <- list()
  
  # [SC] calculate mean LOC by model X qbits
  meanByQuDF <- aggregate(loc ~ mFamily + model + qbits, targetDF, mean)
  meanByQuDF$loc <- round(meanByQuDF$loc, 2)
  # [SC] calculate LOC standard error by model X Qbits
  seByQuDF <- aggregate(loc ~ mFamily + model + qbits, targetDF, se)
  seByQuDF$loc <- round(seByQuDF$loc, 2)
  names(seByQuDF)[names(seByQuDF)=="loc"] <- "se"
  meanByQuDF <- merge(meanByQuDF, seByQuDF)
  # [SC] draw the line plot
  qbitPlot <- ggplot(meanByQuDF, aes(x=qbits, y=loc, group=mFamily)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=loc-se, ymax=loc+se, color=mFamily)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Mean LOC by qbits and models", msg), x="qbits", y = "Lines of code") +
    theme(legend.title=element_blank())
  allPlots <- qbitPlot
  myplots[[length(myplots)+1]] <- qbitPlot
  
  # [SC] calculate mean IT by benchmark X qbits
  meanByBenchDF <- aggregate(loc ~ bench + qbits, targetDF, mean)
  meanByBenchDF$loc <- round(meanByBenchDF$loc, 2)
  # [SC] calculate IT standard error by benchmark X Qbits
  seByBenchDF <- aggregate(loc ~ bench + qbits, targetDF, se)
  seByBenchDF$loc <- round(seByBenchDF$loc, 2)
  names(seByBenchDF)[names(seByBenchDF)=="loc"] <- "se"
  meanByBenchDF <- merge(meanByBenchDF, seByBenchDF)
  # [SC] draw the line plot
  benchPlot <- ggplot(meanByBenchDF, aes(x=qbits, y=loc, group=bench)) + ylim(0, ylimV) +
    geom_errorbar(aes(x=qbits, ymin=loc-se, ymax=loc+se, color=bench)
                  , width=0.1, alpha=1, linewidth=1) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Mean LOC by qbits and benchmarks", msg), x="qbits", y = "Lines of code") +
    theme(legend.title=element_blank())
  allPlots <- allPlots + benchPlot
  myplots[[length(myplots)+1]] <- benchPlot
  
  
  # [SC] calculate mean IT by benchmark X model X qbits
  meanByModelDF <- aggregate(loc ~ bench + mFamily + model + qbits, targetDF, mean)
  meanByModelDF$loc <- round(meanByModelDF$loc, 2)
  # [SC] calculate IT standard error by benchmark X model X Qbits
  seByModelDF <- aggregate(loc ~ bench + mFamily + model + qbits, targetDF, se)
  seByModelDF$loc <- round(seByModelDF$loc, 2)
  names(seByModelDF)[names(seByModelDF)=="loc"] <- "se"
  meanByModelDF <- merge(meanByModelDF, seByModelDF)
  # [SC] plot separate graphs by quantization bits
  qbitsV <- sort(unique(meanByModelDF$qbits))
  for (qbit in qbitsV){
    qbitDF <- subset(meanByModelDF, meanByModelDF$qbits == qbit)
    
    rtPlot <- ggplot(qbitDF, aes(x=bench, y=loc, group=mFamily)) + ylim(0, ylimV) +
      geom_errorbar(aes(x=bench, ymin=loc-se, ymax=loc+se, color=mFamily)
                    , width=0.1, alpha=1, linewidth=1) +
      geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
      geom_point(aes(shape=mFamily, color=mFamily), size=3) +
      labs(title=paste0("Mean LOC of ", qbit, "-bit quantized models", msg), x="", y = "Lines of code") +
      theme(legend.title=element_blank())
    allPlots <- allPlots + rtPlot
    myplots[[length(myplots)+1]] <- rtPlot
  }
  
  if (printF) {
    print(allPlots + plot_layout(nrow = ceiling(length(myplots)/2)))
  }
  
  
  scatterPlot <- 
    ggplot(targetDF, aes(x=loc, y=rt, shape=mFamily, color=bench)) + geom_point()
    # + geom_smooth(method=lm)
  print(scatterPlot)
  print(cor.test(targetDF$rt, targetDF$loc, alternative="two.sided"))
  
  return(myplots)
}

calcPassK <- function(tempDF){
  n <- nrow(tempDF)
  k <- tempDF$pass_k[1]
  c <- sum(tempDF$pass)
  
  if (n - c < k) return(1)
  return(round(1 - (choose(n-c,k)/choose(n,k)), 3))
}

calcPassKAll <- function(targetDF){
  # [SC] calculate pass@K and assign to the column "pass"
  aTargetDF <- aggregate(pass ~ bench + mFamily + model + qbits + bench_item + pass_k, targetDF, mean)
  aTargetDF <- cbind(aTargetDF, passRate = aTargetDF$pass)
  for(rowIndex in 1:nrow(aTargetDF)){
    tempDF <- subset(targetDF, targetDF$model == aTargetDF$model[rowIndex] & 
                       targetDF$qbits == aTargetDF$qbits[rowIndex] & 
                       targetDF$bench_item == aTargetDF$bench_item[rowIndex] & 
                       targetDF$pass_k == aTargetDF$pass_k[rowIndex])
    aTargetDF$pass[rowIndex] <- calcPassK(tempDF)
  }
  
  return(aTargetDF)
}

# [SC] a function to analyze correctness
analyzeCorrectness <- function(targetDF, passK=1, msg=""){
  # [TODO]
  # targetDF <- subset(targetDF, mFamily != "CodeGemma")
  # targetDF <- subset(targetDF, model!="CodeGemmaQ2")
  # ylimV <- 0.55
  ylimV <- 0.75
  plotCount <- 0
  
  # [SC] calculate pass@K and assign to the column "pass"
  aTargetDF <- calcPassKAll(targetDF)
  
  # [SC] average pass@K by model X qbits
  propByQuDF <- aggregate(pass ~ mFamily + qbits, aTargetDF, mean)
  propByQuDF$pass <- round(propByQuDF$pass, 3)
  # [SC] draw the line plot
  qbitPlot <- ggplot(propByQuDF, aes(x=qbits, y=pass, group=mFamily)) + ylim(0, ylimV) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Pass@", passK, " by qbits and models", msg), x="qbits", y = "Proportion") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2))
  allPlots <- qbitPlot
  plotCount <- plotCount + 1
  
  print(paste0("Pass@", passK, " by quantization and models"))
  print(propByQuDF)
  print("")
  
  # [SC] average pass@K by benchmarks X qbits
  # [SC][TODO] All data from CodeGemma family is excluded
  propByBenchDF <- aggregate(pass ~ bench + qbits, aTargetDF, mean)
  propByBenchDF$pass <- round(propByBenchDF$pass, 3)
  # [SC] draw the line plot
  benchPlot <- ggplot(propByBenchDF, aes(x=qbits, y=pass, group=bench)) + ylim(0, ylimV) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Pass@", passK, " by qbits and benchmarks", msg), x="qbits", y = "Proportion") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
          ) + guides(linetype = guide_legend(nrow = 2))
  allPlots <- allPlots + benchPlot
  plotCount <- plotCount + 1
  
  print(paste0("Pass@", passK, " by quantization and benchmarks"))
  print(propByBenchDF)
  print("")
  
  print(allPlots + plot_layout(nrow = ceiling(plotCount/2), tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  
  allPlots <- NULL
  plotCount <- 0
  # [SC] calculate mean IT by benchmark X model X qbits
  propByModelDF <- aggregate(pass ~ bench + mFamily + qbits, aTargetDF, mean)
  propByModelDF$pass <- round(propByModelDF$pass, 3)
  # [SC] plot separate graphs by quantization bits
  qbitsV <- sort(unique(propByModelDF$qbits))
  for (qbit in qbitsV){
    qbitDF <- subset(propByModelDF, propByModelDF$qbits == qbit)

    corrPlot <- ggplot(qbitDF, aes(x=bench, y=pass, group=mFamily)) + ylim(0, ylimV) +
      geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
      geom_point(aes(shape=mFamily, color=mFamily), size=3) +
      labs(title=paste0("Pass@", passK, " of ", qbit, "-bit quantized models", msg), x="", y = "Proportion") +
      theme(legend.title=element_blank(), legend.position = "top",
            axis.text = element_text(size = 12),
            axis.title = element_text(size = 14),
            legend.text = element_text(size = 12),
            plot.title = element_text(size = 16)
      ) + guides(linetype = guide_legend(nrow = 2))
    if (is.null(allPlots)) { allPlots <- corrPlot }
    else { allPlots <- allPlots + corrPlot }
    plotCount <- plotCount + 1
  }

  print(allPlots + plot_layout(nrow = ceiling(plotCount/2), tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  
  allPlots <- NULL
  plotCount <- 0
  for (family in unique(aTargetDF$mFamily)){
    tempDF <- aggregate(pass ~ bench + qbits, subset(aTargetDF, mFamily == family), mean)

    corrPlot <- ggplot(tempDF, aes(x=qbits, y=pass, group=bench)) + ylim(0, ylimV) +
      geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
      geom_point(aes(shape=bench, color=bench), size=3) +
      labs(title=paste0("Pass@", passK, " of ", family, msg), x="qbits", y = "Proportion") +
      theme(legend.title=element_blank(), legend.position = "top",
            axis.text = element_text(size = 12),
            axis.title = element_text(size = 14),
            legend.text = element_text(size = 12),
            plot.title = element_text(size = 16)
      ) + guides(linetype = guide_legend(nrow = 2))
    if (is.null(allPlots)) { allPlots <- corrPlot }
    else { allPlots <- allPlots + corrPlot }
    plotCount <- plotCount + 1
  }
  print(allPlots + plot_layout(nrow = ceiling(plotCount/2), tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  
  
  print(paste0("Correctness by model, bench, and qbits for pass@", passK))
  tempDF <- aggregate(pass ~ mFamily + bench + qbits, aTargetDF, mean)
  tempDF$pass <- round(tempDF$pass, 3)
  print(tempDF)
  
  
  # tempDF <- aTargetDF[aTargetDF$mFamily != "CodeGemma", ]
  tempDF <- aTargetDF
  
  mylm <- glm(pass ~ bench + mFamily + qbits, data=tempDF, family="binomial")
  print(summary(mylm))
  # [SC] check for multicollinearity with adjusted generalized VIF
  print(car::vif(mylm))
  print(rms::vif(mylm))
  # [SC] calculate McFadden's Pseudo R2
  print(pR2(mylm)['McFadden'])
  
  
  fit <- glm(pass ~ bench + mFamily + qbits
                    + bench:mFamily
                    + bench:qbits
                    + mFamily:qbits
                    , data=tempDF, family="binomial")
  print(summary(fit))
  print(pR2(fit)['McFadden'])
  
  print(AIC(mylm))
  print(AIC(fit))
  print(BIC(mylm))
  print(BIC(fit))
}

# [SC] function to analyze types of errors
analyzeErrors <- function(targetDF, msg=""){
  ylimV <- 0.55
  
  
  # tempDF <- subset(targetDF, targetDF$pass == 0)
  tempDF <- targetDF
  
  print("Error types after including all CodeGemma responses")
  propsDF <- aggregate(ft ~ qbits, tempDF, mean)
  propsDF <- merge(propsDF, aggregate(rte ~ qbits, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(se ~ qbits, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(te ~ qbits, tempDF, mean))
  # aggrTempDF <- aggregate(pass ~ qbits, tempDF, mean)
  # aggrTempDF$pass <- 1 - aggrTempDF$pass
  # colnames(aggrTempDF)[colnames(aggrTempDF)=="pass"] <- "fail"
  # propsDF <- merge(propsDF, aggrTempDF)
  # propsDF <- merge(propsDF, aggregate(oe ~ qbits, tempDF, mean))
  # propsDF <- merge(propsDF, aggregate(pass ~ qbits, tempDF, mean))
  print(propsDF)
  
  colnames(propsDF)[colnames(propsDF)=="ft"] <- "Failed test"
  colnames(propsDF)[colnames(propsDF)=="rte"] <- "Runtime"
  colnames(propsDF)[colnames(propsDF)=="se"] <- "Syntax"
  colnames(propsDF)[colnames(propsDF)=="te"] <- "Timeout"
  all_index_radar <- propsDF %>%
    as_tibble()
  all_index_radar <- ggradar(all_index_radar
                             , legend.text.size=12, legend.position="right"
                             , group.point.size=3, group.line.width=1
                             , group.colours = c("#00AFBB", "#E7B800", "#FC4E07")
                             , grid.min = 0, grid.mid = 0.25, grid.max = 0.5
                             , values.radar = c("0", "0.25", "0.50")
                             ) + ggtitle("Proportions by error types") +
                              theme(plot.title = element_text(hjust = 0.5))
  print(all_index_radar)
  
  
  print("Errors by benchmarks:")
  propsDF <- aggregate(ft ~ bench, tempDF, mean)
  propsDF <- merge(propsDF, aggregate(rte ~ bench, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(se ~ bench, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(te ~ bench, tempDF, mean))
  print(propsDF)
  
  print("Errors by models:")
  propsDF <- aggregate(ft ~ mFamily, tempDF, mean)
  propsDF <- merge(propsDF, aggregate(rte ~ mFamily, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(se ~ mFamily, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(te ~ mFamily, tempDF, mean))
  print(propsDF)
  
  print("Errors by models and qbits:")
  propsDF <- aggregate(ft ~ mFamily + qbits, tempDF, mean)
  propsDF <- merge(propsDF, aggregate(rte ~ mFamily + qbits, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(se ~ mFamily + qbits, tempDF, mean))
  propsDF <- merge(propsDF, aggregate(te ~ mFamily + qbits, tempDF, mean))
  propsDF$ft <- round(propsDF$ft, 2)
  propsDF$rte <- round(propsDF$rte, 2)
  propsDF$se <- round(propsDF$se, 2)
  propsDF$te <- round(propsDF$te, 2)
  propsDF <- cbind(propsDF, total=propsDF$ft+propsDF$rte+propsDF$se+propsDF$te)
  
  for(rowIndex in 1:nrow(propsDF)){
    print(paste0(propsDF$mFamily[rowIndex]
                 , " & ", propsDF$qbits[rowIndex]
                 , " & ", propsDF$ft[rowIndex]
                 , " & ", propsDF$rte[rowIndex]
                 , " & ", propsDF$se[rowIndex]
                 , " & ", propsDF$te[rowIndex]
                 , " & ", propsDF$total[rowIndex], " \\"))
  }
  
  print(propsDF)
}

analyzeLuaPassOne <- function(){
  fullDF <- loadData("lua")
  
  passK = 1
  
  # [SC] extract a subset of specific passK trial
  evalDF <- subset(fullDF, fullDF$pass_k == passK)

  # analyzeIT(evalDF[evalDF$pass == "1" & evalDF$qbits != "16",], " (pass@1)", TRUE)
  # analyzeIT(evalDF[evalDF$pass == "0" & evalDF$qbits != "16",], " (fail@1)", TRUE)
  # analyzeIT(evalDF[evalDF$pass == "1" & evalDF$qbits == "16",], " (pass@1)", TRUE)
  # analyzeIT(evalDF[evalDF$pass == "0" & evalDF$qbits == "16",], " (fail@1)", TRUE)
  
  # analyzeLoc(evalDF[evalDF$pass == "1" & evalDF$qbits != "16",], " (pass@1)", TRUE)
  # analyzeLoc(evalDF[evalDF$pass == "0" & evalDF$qbits != "16",], " (fail@1)", TRUE)
  # analyzeLoc(evalDF[evalDF$pass == "1" & evalDF$qbits == "16",], " (pass@1)", TRUE)
  # analyzeLoc(evalDF[evalDF$pass == "0" & evalDF$qbits == "16",], " (fail@1)", TRUE)
  
  
  analyzeCorrectness(evalDF[evalDF$qbits != "16",], passK)
  analyzeErrors(evalDF[evalDF$qbits != "16",])
  analyzeITShort(evalDF[evalDF$qbits != "16",], passK)
  lmIT(evalDF[evalDF$qbits != "16",])
  analyzeLocShort(evalDF[evalDF$qbits != "16",])
  # 
  # analyzeCorrectness(evalDF[evalDF$mFamily != "CodeQwen" & evalDF$mFamily != "CodeLlama",])
  # analyzeITShort(evalDF[evalDF$mFamily != "CodeQwen" & evalDF$mFamily != "CodeLlama",])
}

analyzePassTen <- function(lang="lua"){
  fullDF <- loadData(lang)
  
  label <- "Lua"
  if (lang == "py") { label <- "Python" }
  
  pOneDF <- subset(fullDF, fullDF$pass_k == 1 & fullDF$qbits == 4)
  pTenDF <- subset(fullDF, fullDF$pass_k == 10)
  
  ylimV <- 1.0
  plotCount <- 0
  
  # [SC] calculate pass@K and assign to the column "pass"
  pOneDF <- calcPassKAll(pOneDF)
  pTenDF <- calcPassKAll(pTenDF)
  
  # [SC] average pass@K by model X qbits
  modelMeanDF <- aggregate(pass ~ mFamily + qbits + pass_k, pOneDF, mean)
  pTenMeanDF <- aggregate(pass ~ mFamily + qbits + pass_k, pTenDF, mean)
  modelMeanDF <- rbind(modelMeanDF, pTenMeanDF)
  modelMeanDF$pass <- round(modelMeanDF$pass, 3)
  
  print(paste0("pass@k by models - ", label))
  print(modelMeanDF)
  print("")
  
  
  # [SC] average pass@K by model X qbits
  benchMeanDF <- aggregate(pass ~ bench + qbits + pass_k, pOneDF, mean)
  pTenMeanDF <- aggregate(pass ~ bench + qbits + pass_k, pTenDF, mean)
  benchMeanDF <- rbind(benchMeanDF, pTenMeanDF)
  benchMeanDF$pass <- round(benchMeanDF$pass, 3)
  
  print(paste0("pass@k by benchmarks - ", label))
  print(benchMeanDF)
  print("")
  
  
  # [SC] draw the line plot
  modelPlot <- ggplot(modelMeanDF, aes(x=as.factor(pass_k), y=pass, group=mFamily)) + ylim(0, ylimV) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Pass@k by models"), x="k", y = "pass@k") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2))
  
  benchPlot <- ggplot(benchMeanDF, aes(x=as.factor(pass_k), y=pass, group=bench)) + ylim(0, ylimV) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Pass@k by benchmarks"), x="k", y = "pass@k") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2))
  
  print(modelPlot + benchPlot + plot_layout(nrow = 1, tag_level = 'new') + plot_annotation(tag_levels = c('a')))
}

analyzePassOneFromPassTen <- function(lang="lua"){
  fullDF <- loadData(lang)
  
  n <- 10
  k <- 1
  
  pTenDF <- subset(fullDF, fullDF$pass_k == n)
  
  if (k > 1) {
    aTargetDF <- aggregate(pass ~ bench + mFamily + model + qbits + bench_item + pass_k, pTenDF, sum)
    aTargetDF <- cbind(aTargetDF, passCount = aTargetDF$pass)
  
    for(rowIndex in 1:nrow(aTargetDF)){
      c <- aTargetDF$passCount[rowIndex]
  
      if (n - c < k) aTargetDF$pass[rowIndex] <- 1
      aTargetDF$pass[rowIndex] <- round(1 - (choose(n-c,k)/choose(n,k)), 3)
    }
    print(aggregate(pass ~ mFamily + qbits, aTargetDF, mean))
    print(aggregate(pass ~ bench + qbits, aTargetDF, mean))
    print(aggregate(pass ~ model + bench + qbits, aTargetDF, mean))
  } 
  else {
    aTargetDF <- aggregate(pass ~ bench + mFamily + model + qbits + bench_item + pass_k, pTenDF, mean)
    print(aggregate(pass ~ mFamily + qbits, aTargetDF, mean))
    print(aggregate(pass ~ bench + qbits, aTargetDF, mean))
    print(aggregate(pass ~ model + bench + qbits, aTargetDF, mean))
  }
}

analyzePythonPassOne <- function(){
  fullDF <- loadData("py")

  passK = 1
  
  # [SC] extract a subset of specific passK trial
  evalDF <- subset(fullDF, fullDF$pass_k == passK)
  
  analyzeCorrectness(evalDF[evalDF$qbits != "16",], passK)
  analyzeErrors(evalDF[evalDF$qbits != "16",])
  analyzeITShort(evalDF[evalDF$qbits != "16",], passK)
}

analyzePythonSubsetPassOne <- function(){
  pyFullDF <- loadData("py")
  luaFullDF <- loadData("lua")
  
  passK = 1
  
  luaEvalDF <- subset(luaFullDF, 
                      luaFullDF$pass_k == passK 
                      & luaFullDF$bench != "MCEVAL" 
                      & luaFullDF$qbits != "16")
  
  itemsVC <- unique(luaEvalDF$bench_item)
  pyItemsVC <- c()
  for (item in itemsVC){
    strList <- strsplit(item, "_")
    
    if (strList[[1]][1] == "HumanEval") {
      pyItemsVC <- c(pyItemsVC, paste0(strList[[1]][1], "_", strList[[1]][2], "_py"))
    }
    else{
      pyItemsVC <- c(pyItemsVC, paste0(strList[[1]][1], "_py_", strList[[1]][2]))
    }
  }
  pyEvalDF <- subset(pyFullDF,
                     pyFullDF$pass_k == passK
                     & pyFullDF$bench != "MCEVAL"
                     & pyFullDF$qbits != "16"
                     & pyFullDF$bench_item %in% pyItemsVC)
  analyzeCorrectness(luaEvalDF, passK)
  analyzeCorrectness(pyEvalDF, passK)
  
  
  passK = 10
  luaEvalDF <- subset(luaFullDF,
                      luaFullDF$pass_k == passK
                      & luaFullDF$bench != "MCEVAL"
                      & luaFullDF$qbits != "16")
  pyEvalDF <- subset(pyFullDF,
                     pyFullDF$pass_k == passK
                     & pyFullDF$bench != "MCEVAL"
                     & pyFullDF$qbits != "16"
                     & pyFullDF$bench_item %in% pyItemsVC)
  # [SC] calculate pass@K and assign to the column "pass"
  luaEvalDF <- calcPassKAll(luaEvalDF)
  pyEvalDF <- calcPassKAll(pyEvalDF)
  # [SC] average pass@K by model X qbits
  luaTenModelDF <- aggregate(pass ~ mFamily + qbits + pass_k, luaEvalDF, mean)
  luaTenModelDF$pass <- round(luaTenModelDF$pass, 3)
  # [SC] average pass@K by model X qbits
  luaTenBenchDF <- aggregate(pass ~ bench + qbits + pass_k, luaEvalDF, mean)
  luaTenBenchDF$pass <- round(luaTenBenchDF$pass, 3)
  print(luaTenModelDF)
  print(luaTenBenchDF)
  # [SC] average pass@K by model X qbits
  pyTenModelDF <- aggregate(pass ~ mFamily + qbits + pass_k, pyEvalDF, mean)
  pyTenModelDF$pass <- round(pyTenModelDF$pass, 3)
  # [SC] average pass@K by model X qbits
  pyTenBenchDF <- aggregate(pass ~ bench + qbits + pass_k, pyEvalDF, mean)
  pyTenBenchDF$pass <- round(pyTenBenchDF$pass, 3)
  print(pyTenModelDF)
  print(pyTenBenchDF)
}

analyzeLuaPassOne()
analyzePassTen("lua")
analyzePassOneFromPassTen("lua")

analyzePythonPassOne()
analyzePythonSubsetPassOne()
analyzePassTen("py")
analyzePassOneFromPassTen("py")








