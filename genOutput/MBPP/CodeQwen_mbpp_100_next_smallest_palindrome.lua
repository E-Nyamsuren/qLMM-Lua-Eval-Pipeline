-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local str = tostring(num)
    local len = #str
    local i = len
    while i > 0 do
        if str:sub(i,i) ~= str:sub(1,1) then
            break
        end
        i = i - 1
    end
    if i == 0 then
        return num + 1
    end
    local left = str:sub(1,i-1)
    local right = str:sub(i,len)
    local next_digit = tonumber(right:sub(1,1)) + 1
    if next_digit == 10 then
        right = "0" .. right:sub(2)
    else
        right = next_digit .. right:sub(2)
    end
    return tonumber(left .. right)
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())