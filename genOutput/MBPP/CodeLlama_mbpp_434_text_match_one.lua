-- Write a function that matches a string that has an a followed by one or more b's.
local function text_match_one(text)
    return text:match("a%w+")
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_one
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abba'), true)
end

os.exit(lu.LuaUnit.run())