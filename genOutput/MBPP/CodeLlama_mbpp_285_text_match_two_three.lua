-- Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
local function text_match_two_three(text)
    local a_index = string.find(text, "a")
    if a_index == nil then
        return false
    end
    local b_index = string.find(text, "b", a_index + 1)
    if b_index == nil then
        return false
    end
    if string.find(text, "b", b_index + 1) == nil then
        return false
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_two_three
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
end

os.exit(lu.LuaUnit.run())