-- Write a function which takes a tables of tables and returns the average value for each subtable as a table.
local function average_tuple(nums)
	local sum = 0
	for i = 1, #nums do
		sum = sum + nums[i]
	end
	return sum / #nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = average_tuple
    lu.assertEquals(candidate({{10, 10, 10, 12}, {30, 45, 56, 45}, {81, 80, 39, 32}, {1, 2, 3, 4}}), {30.5, 34.25, 27.0, 23.25})
    lu.assertEquals(candidate({{1, 1, -5}, {30, -15, 56}, {81, -60, -39}, {-10, 2, 3}}), {25.5, -18.0, 3.75})
    lu.assertEquals(candidate({{100, 100, 100, 120}, {300, 450, 560, 450}, {810, 800, 390, 320}, {10, 20, 30, 40}}), {305.0, 342.5, 270.0, 232.5})
end

os.exit(lu.LuaUnit.run())