-- Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
local function text_match_two_three(text)
    local pattern = "(%a)b{2,3}"
    return string.match(text, pattern)
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_two_three
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
end

os.exit(lu.LuaUnit.run())