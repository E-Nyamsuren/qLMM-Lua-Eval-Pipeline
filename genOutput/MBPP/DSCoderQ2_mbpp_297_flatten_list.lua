-- Write a function to flatten a given nested table structure.
local function flatten_list(list1)
    local flattened_list = {}
    for _, list in ipairs(list1) do
        for _, value in ipairs(list) do
            table.insert(flattened_list, value)
       
end

lu = require('luaunit')

function test_humaneval()
local candidate = flatten_list
    lu.assertEquals(candidate({0, 10, {20, 30}, 40, 50, {60, 70, 80}, {90, 100, 110, 120}}), {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120})
    lu.assertEquals(candidate({{10, 20}, {40}, {30, 56, 25}, {10, 20}, {33}, {40}}), {10, 20, 40, 30, 56, 25, 10, 20, 33, 40})
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5, 6}, {10, 11, 12}, {7, 8, 9}}), {1, 2, 3, 4, 5, 6, 10, 11, 12, 7, 8, 9})
end

os.exit(lu.LuaUnit.run())