-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    -- Convert the number to a string
    local str = tostring(n)
    -- Check if the string has at least 3 characters
    if #str < 3 then
        return false
    end
    -- Check if the first two characters are the same
    if str:sub(1, 2) ~= str:sub(1, 2) then
        return false
    end
    -- Check if the last two characters are the same
    if str:sub(-2, -1) ~= str:sub(-2, -1) then
        return false
    end
    -- Check if the middle characters are the same
    if str:sub(3, -3) ~= str:sub(3, -3) then
        return false
    end
    -- If all checks pass, the number is undulating
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())