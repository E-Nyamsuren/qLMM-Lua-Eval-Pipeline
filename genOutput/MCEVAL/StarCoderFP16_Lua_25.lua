
--[[
Shifts all characters by 5 positions in alphabetical order. Only letters are replaced, and all letters are in uppercase.

Parameters:
text (str): The input text to be processed.

Returns:
str: The transformed text with characters shifted by 5 positions.

Examples:
shift_characters("NS BFW, JAJSYX TK NRUTWYFSHJ FWJ YMJ WJXZQY TK YWNANFQ HFZXJX")
-- Expected: "IN WAR, EVENTS OF IMPORTANCE ARE THE RESULT OF TRIVIAL CAUSES"
]]--
function shift_characters(text)
    local alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    local new_text = ""
    for i = 1, #text do
        local char = string.sub(text, i, i)
        local index = string.find(alphabet, char)
        if index then
            local new_index = (index + 5) % 26
            new_text = new_text .. string.sub(alphabet, new_index, new_index)
        else
            new_text = new_text .. char
        end
    end
    return new_text
end

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