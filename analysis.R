# [SC] cleaning the environment
rm(list=ls())

######################################################################
## [SC][TODO] indicate which files to include in analysis

# [SC] An evaluation summary table from execution of the scripts
evalSumFiles <- c("evalSummary_1.csv")
# [SC] Time taken for the language models to generate the scripts
locFiles <- c("locCount_1.csv")
# [SC] Time taken for the language models to generate the scripts
rtFiles <- c("responseTimes_1.csv")

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

# [SC] load evaluation summaries
evalDF <- NULL
for (evalFile in evalSumFiles){
  tempDF <- read.csv(paste0(evalOutputPath, evalFile)
                     , stringsAsFactors=FALSE, header=TRUE
                     , na.strings=c("", " ", "NA"))
  
  if(is.null(evalDF)) { evalDF =  tempDF }
  else { evalDF = rbind(evalDF, tempDF) }
}
print(paste0("==== Loaded evaluation summary with ", nrow(evalDF), " rows."))
# [SC][TODO] remove
for(colname in colnames(evalDF)){
  evalDF[,colname] <- trimws(evalDF[,colname])
}

# [SC] load line of code counts
locDF <- NULL
for (locFile in locFiles){
  tempDF <- read.csv(paste0(evalOutputPath, locFile)
                     , stringsAsFactors=FALSE, header=TRUE
                     , na.strings=c("", " ", "NA"))
  
  if(is.null(locDF)) { locDF =  tempDF }
  else { locDF = rbind(locDF, tempDF) }
}
print(paste0("==== Loaded line of code data with ", nrow(locDF), " rows."))
# [SC] merge the two datasets into one dataframe
evalDF <- merge(locDF, evalDF, by=c("bench", "model", "bench_item"))
print(paste0("==== Merged the two dataframes to ", nrow(evalDF), " rows."))

# [SC] load inference time data
rtDF <- NULL
for (rtFile in rtFiles){
  tempDF <- read.csv(paste0(genOutputPath, rtFile)
                     , stringsAsFactors=FALSE, header=TRUE
                     , na.strings=c("", " ", "NA"))

  if(is.null(rtDF)) { rtDF =  tempDF }
  else { rtDF = rbind(rtDF, tempDF) }
}
print(paste0("==== Loaded inference time data with ", nrow(rtDF), " rows."))
# [SC] merge the two datasets into one dataframe
evalDF <- merge(rtDF, evalDF, by=c("bench", "model", "bench_item"))
print(paste0("==== Merged the two dataframes to ", nrow(evalDF), " rows."))
# [SC] ensure 0 and 1 flags are numeric
for(colname in c("pass","ft","rte","se","te","oe")){
  evalDF[,colname] <- as.numeric(evalDF[,colname])
}

print(paste0("Total inference time: ", round(sum(evalDF$rt), 0), " seconds or ", round(sum(evalDF$rt)/60, 0), " minutes or ", round(sum(evalDF$rt)/3600, 1), " hours"))


# [SC] a function to calculate standard error
se <- function(x) { 
  x <- x[!is.na(x)]
  
  return(sd(x)/sqrt(length(x)))
}

# [SC] a function to analyze IT
analyzeITShort <- function(targetDF){
  # [TODO]
  # targetDF <- subset(targetDF, !(mFamily == "CodeGemma" & qbits != "16"))
  
  ylimV <- 75
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
    labs(title=paste0("Mean IT by models (pass@1)"), x="qbits", y = "Seconds") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2), 
               color = guide_legend(nrow = 2), 
               shape = guide_legend(nrow = 2))
  allPlots <- qbitPlot
  
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
    labs(title=paste0("Mean IT by benchmarks (pass@1)"), x="qbits", y = "Seconds") +
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
    labs(title=paste0("Mean IT by models (fail@1)"), x="qbits", y = "Seconds") +
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
    labs(title=paste0("Mean IT by benchmarks (fail@1)"), x="qbits", y = "Seconds") +
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
      labs(title=paste0("Mean IT of ", qbit, "-bit models (pass@1)"), x="", y = "Seconds") +
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
      labs(title=paste0("Mean IT of ", qbit, "-bit models (fail@1)"), x="", y = "Seconds") +
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
analyzeLocShort <- function(targetDF){
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
    labs(title=paste0("Mean LOC by models (pass@1)"), x="qbits", y = "Lines of code") +
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
    labs(title=paste0("Mean LOC by benchmarks (pass@1)"), x="qbits", y = "Lines of code") +
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
    labs(title=paste0("Mean LOC by models (fail@1)"), x="qbits", y = "Lines of code") +
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
    labs(title=paste0("Mean LOC by benchmarks (fail@1)"), x="qbits", y = "Lines of code") +
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
    labs(title=paste0("LoC/It scatterplot (pass@1)"), x="Lines of code", y = "Inference time (seconds)") +
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
  labs(title=paste0("LoC/It scatterplot (fail@1)"), x="Lines of code", y = "Inference time (seconds)") + 
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
    labs(title=paste0("2 bit (pass@1)"), x="Lines of code", y = "Inference time (seconds)") +
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
    labs(title=paste0("4 bit (pass@1)"), x="Lines of code", y = "Inference time (seconds)") +
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
    labs(title=paste0("8 bit (pass@1)"), x="Lines of code", y = "Inference time (seconds)") +
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
    labs(title=paste0("2 bit (fail@1)"), x="Lines of code", y = "Inference time (seconds)") +
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
    labs(title=paste0("4 bit (fail@1)"), x="Lines of code", y = "Inference time (seconds)") +
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
    labs(title=paste0("8 bit (fail@1)"), x="Lines of code", y = "Inference time (seconds)") +
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

# [SC] a function to analyze correctness
analyzeCorrectness <- function(targetDF, msg=""){
  # [TODO]
  # targetDF <- subset(targetDF, mFamily != "CodeGemma")
  # targetDF <- subset(targetDF, model!="CodeGemmaQ2")
  ylimV <- 0.55
  plotCount <- 0
  
  # [SC] calculate pass@1 by model X qbits
  propByQuDF <- aggregate(pass ~ mFamily + qbits, targetDF, mean)
  propByQuDF$pass <- round(propByQuDF$pass, 3)
  # [SC] draw the line plot
  qbitPlot <- ggplot(propByQuDF, aes(x=qbits, y=pass, group=mFamily)) + ylim(0, ylimV) +
    geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
    geom_point(aes(shape=mFamily, color=mFamily), size=3) +
    labs(title=paste0("Pass@1 by qbits and models", msg), x="qbits", y = "Proportion") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
    ) + guides(linetype = guide_legend(nrow = 2))
  allPlots <- qbitPlot
  plotCount <- plotCount + 1
  
  print("Pass@1 by quantization and models")
  print(propByQuDF)
  print("")
  
  # [SC] calculate pass@1 by benchmarks X qbits
  # [SC][TODO] All data from CodeGemma family is excluded
  propByBenchDF <- aggregate(pass ~ bench + qbits, targetDF, mean)
  propByBenchDF$pass <- round(propByBenchDF$pass, 3)
  # [SC] draw the line plot
  benchPlot <- ggplot(propByBenchDF, aes(x=qbits, y=pass, group=bench)) + ylim(0, ylimV) +
    geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
    geom_point(aes(shape=bench, color=bench), size=3) +
    labs(title=paste0("Pass@1 by qbits and benchmarks", msg), x="qbits", y = "Proportion") +
    theme(legend.title=element_blank(), legend.position = "top",
          axis.text = element_text(size = 12),
          axis.title = element_text(size = 14),
          legend.text = element_text(size = 12),
          plot.title = element_text(size = 16)
          ) + guides(linetype = guide_legend(nrow = 2))
  allPlots <- allPlots + benchPlot
  plotCount <- plotCount + 1
  
  print("Pass@1 by quantization and benchmarks")
  print(propByBenchDF)
  print("")
  
  print(allPlots + plot_layout(nrow = ceiling(plotCount/2), tag_level = 'new') + plot_annotation(tag_levels = c('a')))
  
  allPlots <- NULL
  plotCount <- 0
  # [SC] calculate mean IT by benchmark X model X qbits
  propByModelDF <- aggregate(pass ~ bench + mFamily + qbits, targetDF, mean)
  propByModelDF$pass <- round(propByModelDF$pass, 3)
  # [SC] plot separate graphs by quantization bits
  qbitsV <- sort(unique(propByModelDF$qbits))
  for (qbit in qbitsV){
    qbitDF <- subset(propByModelDF, propByModelDF$qbits == qbit)

    corrPlot <- ggplot(qbitDF, aes(x=bench, y=pass, group=mFamily)) + ylim(0, ylimV) +
      geom_line(aes(linetype=mFamily, color=mFamily), linewidth = 1) +
      geom_point(aes(shape=mFamily, color=mFamily), size=3) +
      labs(title=paste0("Pass@1 of ", qbit, "-bit quantized models", msg), x="", y = "Proportion") +
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
  for (family in unique(targetDF$mFamily)){
    tempDF <- aggregate(pass ~ bench + qbits, subset(targetDF, mFamily == family), mean)

    corrPlot <- ggplot(tempDF, aes(x=qbits, y=pass, group=bench)) + ylim(0, ylimV) +
      geom_line(aes(linetype=bench, color=bench), linewidth = 1) +
      geom_point(aes(shape=bench, color=bench), size=3) +
      labs(title=paste0("Pass@1 of ", family, msg), x="qbits", y = "Proportion") +
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
  
  
  # tempDF <- targetDF[targetDF$mFamily != "CodeGemma", ]
  tempDF <- targetDF
  
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
    print(paste0(propsDF$mFamily[rowIndex], " & ", propsDF$qbits[rowIndex], " & ", propsDF$ft[rowIndex], " & ", propsDF$rte[rowIndex], " & ", propsDF$se[rowIndex], " & ", propsDF$te[rowIndex], " & ", propsDF$total[rowIndex], " \\"))
  }
  
  print(propsDF)
}

# analyzeIT(evalDF[evalDF$pass == "1" & evalDF$qbits != "16",], " (pass@1)", TRUE)
# analyzeIT(evalDF[evalDF$pass == "0" & evalDF$qbits != "16",], " (fail@1)", TRUE)
# analyzeIT(evalDF[evalDF$pass == "1" & evalDF$qbits == "16",], " (pass@1)", TRUE)
# analyzeIT(evalDF[evalDF$pass == "0" & evalDF$qbits == "16",], " (fail@1)", TRUE)

# analyzeLoc(evalDF[evalDF$pass == "1" & evalDF$qbits != "16",], " (pass@1)", TRUE)
# analyzeLoc(evalDF[evalDF$pass == "0" & evalDF$qbits != "16",], " (fail@1)", TRUE)
# analyzeLoc(evalDF[evalDF$pass == "1" & evalDF$qbits == "16",], " (pass@1)", TRUE)
# analyzeLoc(evalDF[evalDF$pass == "0" & evalDF$qbits == "16",], " (fail@1)", TRUE)


analyzeCorrectness(evalDF[evalDF$qbits != "16",])

analyzeErrors(evalDF[evalDF$qbits != "16",])

analyzeITShort(evalDF[evalDF$qbits != "16",])
lmIT(evalDF[evalDF$qbits != "16",])

analyzeLocShort(evalDF[evalDF$qbits != "16",])

analyzeCorrectness(evalDF[evalDF$mFamily != "CodeQwen" & evalDF$mFamily != "CodeLlama",])
analyzeITShort(evalDF[evalDF$mFamily != "CodeQwen" & evalDF$mFamily != "CodeLlama",])
