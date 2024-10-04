-- Write a function to find the number of ways to partition a set of Bell numbers.
local function bell_number(n)
	local function bell_partition(n, k)
		if n == 0 then return 1 end
		local result = 0
		for i = 0, k - 1 do
			result = result + bell_partition(n - k, i)
		end
		return result
	end
	return bell_partition(n, n)
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(10), 115975)
    lu.assertEquals(candidate(56), 6775685320645824322581483068371419745979053216268760300)
end

os.exit(lu.LuaUnit.run())