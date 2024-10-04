-- Write a function that checks if a strings contains 'z', except at the start and end of the word.
local function text_match_wordz_middle(text)
    local start_z = text:sub(2, 2) == "z"
    local end_z = text:sub(-2, -2) == "z"
    local middle_z = text:sub(3, -2)
    return start_z and end_z and middle_z:find("z") ~= nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_wordz_middle
    lu.assertEquals(candidate('pythonzabc.'), true)
    lu.assertEquals(candidate('zxyabc.'), false)
    lu.assertEquals(candidate('  lang  .'), false)
end

os.exit(lu.LuaUnit.run())