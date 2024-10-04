-- Write a function to check whether the given string starts and ends with the same character or not.
local function check_char(string)
    if string == nil then
        return false
    end
    if string == "" then
        return false
    end
    if string:len() == 1 then
        return false
    end
    if string:sub(1, 1) == string:sub(string:len(), string:len()) then
        return true
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_char
    lu.assertEquals(candidate('abba'), 'Valid')
    lu.assertEquals(candidate('a'), 'Valid')
    lu.assertEquals(candidate('abcd'), 'Invalid')
end

os.exit(lu.LuaUnit.run())