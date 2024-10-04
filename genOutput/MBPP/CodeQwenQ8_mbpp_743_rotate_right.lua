-- Write a function to rotate a given table by specified number of items to the right direction. https://www.geeksforgeeks.org/luathon-program-right-rotate-table-n/
local function rotate_right(list, m)
    local n = #list
    local result = {}
    for i = 1, n do
        result[(i + m - 1) % n + 1] = list[i]
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = rotate_right
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 3), {8, 9, 10, 1, 2, 3, 4, 5, 6, 7})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 2), {9, 10, 1, 2, 3, 4, 5, 6, 7, 8})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 5), {6, 7, 8, 9, 10, 1, 2, 3, 4, 5})
end

os.exit(lu.LuaUnit.run())