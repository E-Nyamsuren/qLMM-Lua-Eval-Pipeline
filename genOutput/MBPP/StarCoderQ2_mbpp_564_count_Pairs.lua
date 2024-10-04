-- Write a luathon function which takes a table of integers and counts the number of possible unordered pairs where both elements are unequal.
local function count_Pairs(arr, n)
	local count = 0
	for i = 1, n - 1 do
		for j = i + 1, n do
			if arr[i] ~= arr[j] then
				count = count + 1
			end
		end
	end
	return count
end


lu = require('luaunit')

function test_humaneval()
local candidate = count_Pairs
    lu.assertEquals(candidate({1, 2, 1}, 3), 2)
    lu.assertEquals(candidate({1, 1, 1, 1}, 4), 0)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, 5), 10)
end

os.exit(lu.LuaUnit.run())