-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local function is_palindrome(s)
        local len = string.len(s)
        for i = 1, len do
            if s:sub(i, i) ~= s:sub(len - i + 1, len - i + 1) then
                return false
            end
        end
        return true
    end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())