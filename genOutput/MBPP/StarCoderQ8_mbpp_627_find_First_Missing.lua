-- Write a luathon function to find the smallest missing number from a sorted table of natural numbers.
local function find_First_Missing(array)
	local n = #array
	if n == 0 then
		return 1
	end
	local min = array[1]
	local max = array[n]
	if min > 1 then
		return 1
	end
	if max == 1 then
		return 2
	end
	for i = 2, n do
		if array[i] - array[i - 1] > 1 then
			return array[i - 1] + 1
		end
	end
	return max + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_First_Missing
    lu.assertEquals(candidate({0, 1, 2, 3}), 4)
    lu.assertEquals(candidate({0, 1, 2, 6, 9}), 3)
    lu.assertEquals(candidate({2, 3, 5, 8, 9}), 0)
end

os.exit(lu.LuaUnit.run())