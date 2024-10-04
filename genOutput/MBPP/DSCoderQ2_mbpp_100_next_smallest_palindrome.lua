-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
    local next_num = num + 1
    while not is_palindrome(next_num) do
        next_num = next_num + 1
    end
    return next_num
end

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())