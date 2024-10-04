-- Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/luathon-exercises/re/luathon-re-exercise-3.php
local function text_match_zero_one(text)
    return text:match("a%l+")
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_zero_one
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
    lu.assertEquals(candidate('dsabbbba'), true)
    lu.assertEquals(candidate('asbbbba'), false)
    lu.assertEquals(candidate('abaaa'), true)
end

os.exit(lu.LuaUnit.run())