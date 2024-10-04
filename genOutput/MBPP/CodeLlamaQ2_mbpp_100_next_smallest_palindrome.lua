-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local str = tostring(num)
    local len = #str
    if len == 1 then
        return num
    end
    if len % 2 == 0 then
        if str:sub(1, len/2) == str:sub(len/2+1, len) then
            return num
        end
    else
        if str:sub(1, len/2) == str:sub(len/2+1, len) then
            return num
        end
    end
    local new_str = ""
    for i = 1, len/2 do
        new_str = new_str .. str:sub(i, i)
    end
    new_str = new_str .. str:sub(len/2+1, len)
    return tonumber(new_str)
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())