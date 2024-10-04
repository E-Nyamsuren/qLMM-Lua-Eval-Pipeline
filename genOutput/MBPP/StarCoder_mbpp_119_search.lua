-- Write a luathon function to find the element that appears only once in a sorted table.
local function search(arr)
	local count = {}
	for i, v in ipairs(arr) do
		count[v] = (count[v] or 0) + 1
	end
	for i, v in ipairs(arr) do
		if count[v] == 1 then
			return v
		end
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = search
    lu.assertEquals(candidate({1, 1, 2, 2, 3}), 3)
    lu.assertEquals(candidate({1, 1, 3, 3, 4, 4, 5, 5, 7, 7, 8}), 8)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 4, 4}), 1)
end

os.exit(lu.LuaUnit.run())