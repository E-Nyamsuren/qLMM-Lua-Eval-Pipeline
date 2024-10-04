-- Write a function to extract all the adjacent coordinates of the given coordinate table.
local function get_coordinates(test_tup)
    local x = test_tup[1]
    local y = test_tup[2]
    local z = test_tup[3]
    local x_tup = {x-1, y, z}
    local y_tup = {x, y-1, z}
    local z_tup = {x, y, z-1}
    local xy_tup = {x-1, y-1, z}
    local xz_tup = {x-1, y, z-1}
    local yz_tup = {x, y-1, z-1}
    local xyz_tup = {x-1, y-1, z-1}
    local tup_list = {x_tup, y_tup, z_tup, xy_tup, xz_tup, yz_tup, xyz_tup}
    return tup_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_coordinates
    lu.assertEquals(candidate({3, 4}), {{2, 3}, {2, 4}, {2, 5}, {3, 3}, {3, 4}, {3, 5}, {4, 3}, {4, 4}, {4, 5}})
    lu.assertEquals(candidate({4, 5}), {{3, 4}, {3, 5}, {3, 6}, {4, 4}, {4, 5}, {4, 6}, {5, 4}, {5, 5}, {5, 6}})
    lu.assertEquals(candidate({5, 6}), {{4, 5}, {4, 6}, {4, 7}, {5, 5}, {5, 6}, {5, 7}, {6, 5}, {6, 6}, {6, 7}})
end

os.exit(lu.LuaUnit.run())