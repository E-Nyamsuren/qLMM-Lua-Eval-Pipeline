-- Write a function that returns integers x and y that satisfy ax + by = n as a table, or return nil if no solution exists.
local function find_solution(a, b, n)
	local function gcd(x, y)
		while y ~= 0 do
			x, y = y, x % y
		end
		return x
	end
	local g = gcd(a, b)
	if n % g ~= 0 then
		return nil
	end
	local x = n / g
	local y = b / g
	return x, y
end


lu = require('luaunit')

function test_humaneval()
local candidate = find_solution
    lu.assertEquals(candidate(2, 3, 7), {2, 1})
    lu.assertEquals(candidate(4, 2, 7), None)
    lu.assertEquals(candidate(1, 13, 17), {4, 1})
end

os.exit(lu.LuaUnit.run())