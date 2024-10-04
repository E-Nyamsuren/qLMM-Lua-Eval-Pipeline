-- Write a function to extract all the adjacent coordinates of the given coordinate table.
local function get_coordinates(test_tup)
	local x, y = test_tup[1], test_tup[2]
	local coords = {}
	for i = -1, 1 do
		for j = -1, 1 do
			if i ~= 0 or j ~= 0 then
				table.insert(coords, {x + i, y + j})
			end
		end
	end
	return coords
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_coordinates
    lu.assertEquals(candidate({3, 4}), {{2, 3}, {2, 4}, {2, 5}, {3, 3}, {3, 4}, {3, 5}, {4, 3}, {4, 4}, {4, 5}})
    lu.assertEquals(candidate({4, 5}), {{3, 4}, {3, 5}, {3, 6}, {4, 4}, {4, 5}, {4, 6}, {5, 4}, {5, 5}, {5, 6}})
    lu.assertEquals(candidate({5, 6}), {{4, 5}, {4, 6}, {4, 7}, {5, 5}, {5, 6}, {5, 7}, {6, 5}, {6, 6}, {6, 7}})
end

os.exit(lu.LuaUnit.run())