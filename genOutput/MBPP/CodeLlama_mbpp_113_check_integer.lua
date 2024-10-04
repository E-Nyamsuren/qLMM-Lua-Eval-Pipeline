-- Write a function to check if a string represents an integer or not.
local function check_integer(text)
    local n = tonumber(text)
    if n == nil then
        return false
    end
    if text:sub(1, 1) == '-' or text:sub(1, 1) == '+' then
        return false
    end
    if text:find('%.') then
        return false
    end
    if text:find('e') or text:find('E') then
        return false
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_integer
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('1'), true)
    lu.assertEquals(candidate('12345'), true)
end

os.exit(lu.LuaUnit.run())