-- Write a function to extract all the adjacent coordinates of the given coordinate table.
local function get_coordinates(test_tup)
    local result = {}
    for i, v in ipairs(test_tup) do
        local x, y = v[1], v[2]
        table.insert(result, {x - 1, y})
        table.insert(result, {x + 1, y})
        table.insert(result, {x, y - 1})
        table.insert(result, {x, y + 1})
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_coordinates
    lu.assertEquals(candidate({3, 4}), {{2, 3}, {2, 4}, {2, 5}, {3, 3}, {3, 4}, {3, 5}, {4, 3}, {4, 4}, {4, 5}})
    lu.assertEquals(candidate({4, 5}), {{3, 4}, {3, 5}, {3, 6}, {4, 4}, {4, 5}, {4, 6}, {5, 4}, {5, 5}, {5, 6}})
    lu.assertEquals(candidate({5, 6}), {{4, 5}, {4, 6}, {4, 7}, {5, 5}, {5, 6}, {5, 7}, {6, 5}, {6, 6}, {6, 7}})
end

os.exit(lu.LuaUnit.run())