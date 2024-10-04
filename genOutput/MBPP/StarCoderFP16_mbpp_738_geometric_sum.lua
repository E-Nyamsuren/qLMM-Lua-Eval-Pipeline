-- Write a function to calculate the geometric sum of n-1. https://www.w3resource.com/luathon-exercises/data-structures-and-algorithms/luathon-recursion-exercise-9.php
local function geometric_sum(n)
	if n == 1 then
		return 1
	else
		return 1 + 1 / geometric_sum(n - 1)
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = geometric_sum
    lu.assertEquals(candidate(7), 1.9921875)
    lu.assertEquals(candidate(4), 1.9375)
    lu.assertEquals(candidate(8), 1.99609375)
end

os.exit(lu.LuaUnit.run())