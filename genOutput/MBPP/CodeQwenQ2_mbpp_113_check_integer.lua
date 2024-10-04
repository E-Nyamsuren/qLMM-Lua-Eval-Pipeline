-- Write a function to check if a string represents an integer or not.
local function check_integer(text)
    -- Remove leading and trailing whitespaces
    text = text:trim()
    -- Check if the string is empty
    if text == "" then
        return false
    end
    -- Check if the string is a valid integer
    if text:match("^%d+$") then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_integer
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('1'), true)
    lu.assertEquals(candidate('12345'), true)
end

os.exit(lu.LuaUnit.run())