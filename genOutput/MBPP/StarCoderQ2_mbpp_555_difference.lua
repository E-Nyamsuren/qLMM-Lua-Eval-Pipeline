-- Write a luathon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
local function difference(n)
	local sum_cubes = 0
	local sum = 0
	for i = 1, n do
		sum_cubes = sum_cubes + i^3
		sum = sum + i
	end
	return sum_cubes - sum
end


lu = require('luaunit')

function test_humaneval()
local candidate = difference
    lu.assertEquals(candidate(3), 30)
    lu.assertEquals(candidate(5), 210)
    lu.assertEquals(candidate(2), 6)
end

os.exit(lu.LuaUnit.run())