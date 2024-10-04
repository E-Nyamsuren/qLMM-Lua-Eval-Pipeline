-- Write a luathon function to find the element that appears only once in a sorted table.
local function search(arr)
	local left = 1
	local right = #arr
	while left < right do
		local mid = math.floor((left + right) / 2)
		if arr[mid] == arr[mid + 1] then
			left = mid + 1
		else
			right = mid
		end
	end
	return arr[left]
end

lu = require('luaunit')

function test_humaneval()
local candidate = search
    lu.assertEquals(candidate({1, 1, 2, 2, 3}), 3)
    lu.assertEquals(candidate({1, 1, 3, 3, 4, 4, 5, 5, 7, 7, 8}), 8)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 4, 4}), 1)
end

os.exit(lu.LuaUnit.run())