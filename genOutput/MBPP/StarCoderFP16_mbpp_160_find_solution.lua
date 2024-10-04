-- Write a function that returns integers x and y that satisfy ax + by = n as a table, or return nil if no solution exists.
local function find_solution(a, b, n)
	local x, y = 0, 0
	local d = gcd(a, b)
	if n % d ~= 0 then
		return nil
	end
	local m = n / d
	local a_inv = mod_inverse(a, m)
	if a_inv == nil then
		return nil
	end
	x = a_inv * m
	y = m - x
	return {x = x, y = y}
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_solution
    lu.assertEquals(candidate(2, 3, 7), {2, 1})
    lu.assertEquals(candidate(4, 2, 7), None)
    lu.assertEquals(candidate(1, 13, 17), {4, 1})
end

os.exit(lu.LuaUnit.run())