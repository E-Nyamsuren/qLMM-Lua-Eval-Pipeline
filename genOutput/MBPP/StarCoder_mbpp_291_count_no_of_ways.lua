-- Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
local function count_no_of_ways(n, k)
	-- Write your code here
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_no_of_ways
    lu.assertEquals(candidate(2, 4), 16)
    lu.assertEquals(candidate(3, 2), 6)
    lu.assertEquals(candidate(4, 4), 228)
end

os.exit(lu.LuaUnit.run())