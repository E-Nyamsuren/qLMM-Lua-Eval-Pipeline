-- Write a luathon function to count the number of rotations required to generate a sorted table. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-table/
local function count_rotation(arr)
    local count = 0
    for i = 1, #arr do
        if arr[i] > arr[i+1] then
            count = count + 1
        end
    end
    return count
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