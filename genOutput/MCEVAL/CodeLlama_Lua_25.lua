
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
    local shifted_text = ""
    for i = 1, #text do
        local char = string.upper(string.sub(text, i, i))
        if char:match("[A-Z]") then
            local shift = string.byte(char) - 5
            if shift < 65 then
                shift = 90 - (65 - shift)
            end
            shifted_text = shifted_text .. string.char(shift)
        else
            shifted_text = shifted_text .. char
        end
    end
    return shifted_text
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