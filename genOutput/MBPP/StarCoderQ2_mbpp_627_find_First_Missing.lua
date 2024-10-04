-- Write a luathon function to find the smallest missing number from a sorted table of natural numbers.
local function find_First_Missing(array)
	local n = #array
	local i = 1
	local j = 1
	local missing = 1
	while i <= n do
		if array[i] == missing then
			i = i + 1
		else
			array[j] = array[i]
			j = j + 1
			i = i + 1
			missing = missing + 1
		end
	end
	array[j] = missing
	return array[j]
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_First_Missing
    lu.assertEquals(candidate({0, 1, 2, 3}), 4)
    lu.assertEquals(candidate({0, 1, 2, 6, 9}), 3)
    lu.assertEquals(candidate({2, 3, 5, 8, 9}), 0)
end

os.exit(lu.LuaUnit.run())