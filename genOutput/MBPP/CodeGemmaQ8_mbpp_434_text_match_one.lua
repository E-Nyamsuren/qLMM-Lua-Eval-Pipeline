-- Write a function that matches a string that has an a followed by one or more b's.
local function text_match_one(text)
    local pattern = "ab+"
    local match = string.match(text, pattern)
    if match then
        print("The string matches the pattern.")
    else
        print("The string does not match the pattern.")
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_one
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abba'), true)
end

os.exit(lu.LuaUnit.run())