-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
    local start, end = string.find(text, 'z')
    return start and start > 1 and end < #text
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())