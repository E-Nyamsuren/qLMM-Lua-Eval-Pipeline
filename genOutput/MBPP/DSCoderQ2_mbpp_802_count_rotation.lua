-- Write a luathon function to count the number of rotations required to generate a sorted table. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-table/
local function count_rotation(arr)
    local n = #arr
    local min = arr[1]
    local index = 1
    for i = 2, n do
        if arr[i] < min then
            min = arr[i]
            index = i
        end
    end
    return index
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_rotation
    lu.assertEquals(candidate({3, 2, 1}), 1)
    lu.assertEquals(candidate({4, 5, 1, 2, 3}), 2)
    lu.assertEquals(candidate({7, 8, 9, 1, 2, 3}), 3)
    lu.assertEquals(candidate({1, 2, 3}), 0)
    lu.assertEquals(candidate({1, 3, 2}), 2)
end

os.exit(lu.LuaUnit.run())