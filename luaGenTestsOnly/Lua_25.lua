lu = require('luaunit')

function testShiftCharacters()
  local candidate = shift_characters
  local test1 = "NS BFW, JAJSYX TK NRUTWYFSHJ FWJ YMJ WJXZQY TK YWNANFQ HFZXJX"
  local test2 = "N BTZQI WFYMJW GJ KNWXY NS F QNYYQJ NGJWNFS ANQQFLJ YMFS XJHTSI NS WTRJ"
  local test3 = "IFSLJW PSTBX KZQQ BJQQ YMFY HFJXFW NX RTWJ IFSLJWTZX YMFS MJ"
  lu.assertTrue(candidate(test1) == "IN WAR, EVENTS OF IMPORTANCE ARE THE RESULT OF TRIVIAL CAUSES")
  lu.assertTrue(candidate(test2) == "I WOULD RATHER BE FIRST IN A LITTLE IBERIAN VILLAGE THAN SECOND IN ROME")
  lu.assertTrue(candidate(test3) == "DANGER KNOWS FULL WELL THAT CAESAR IS MORE DANGEROUS THAN HE")
end

os.exit(lu.LuaUnit.run())