-- Write a function to find the Eulerian number a(n, m).
local function eulerian_num(n, m)
	local function factorial(n)
		if n == 0 then
			return 1
		else
			return n * factorial(n - 1)
		end
	end
	return factorial(n) / factorial(n - m)
end

lu = require('luaunit')

function test_humaneval()
local candidate = eulerian_num
    lu.assertEquals(candidate(3, 1), 4)
    lu.assertEquals(candidate(4, 1), 11)
    lu.assertEquals(candidate(5, 3), 26)
end

os.exit(lu.LuaUnit.run())