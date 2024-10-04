-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
    local text_len = string.len(text)
    if text_len < 3 then
        return false
    end
    local text_middle = string.sub(text, 2, text_len - 2)
    return string.find(text_middle, 'z') ~= nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())