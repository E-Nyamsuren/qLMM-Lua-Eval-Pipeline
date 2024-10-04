-- Write a function to extract all the adjacent coordinates of the given coordinate table.
local function get_coordinates(test_tup)
	local x = test_tup[1]
	local y = test_tup[2]
	local coords = {}
	coords[1] = x - 1
	coords[2] = y - 1
	coords[3] = x - 1
	coords[4] = y
	coords[5] = x - 1
	coords[6] = y + 1
	coords[7] = x
	coords[8] = y - 1
	coords[9] = x
	coords[10] = y
	coords[11] = x
	coords[12] = y + 1
	coords[13] = x + 1
	coords[14] = y - 1
	coords[15] = x + 1
	coords[16] = y
	coords[17] = x + 1
	coords[18] = y + 1
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