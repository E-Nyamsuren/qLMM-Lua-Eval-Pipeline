-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local str = tostring(num)
    local len = #str
    for i = 1, len // 2 do
        if str:sub(i, i) ~= str:sub(len - i + 1, len - i + 1) then
            return next_smallest_palindrome(num + 1)
        end
    end
    return num + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())