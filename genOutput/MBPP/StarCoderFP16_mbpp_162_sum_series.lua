-- Write a function to calculate the sum (n - 2*i) from i=0 to n // 2, for instance n + (n-2) + (n-4)... (until n-x =< 0).
local function sum_series(n)
	local sum = 0
	for i = 0, n//2 do
		sum = sum + (n - 2*i)
	end
	return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_series
    lu.assertEquals(candidate(6), 12)
    lu.assertEquals(candidate(10), 30)
    lu.assertEquals(candidate(9), 25)
end

os.exit(lu.LuaUnit.run())