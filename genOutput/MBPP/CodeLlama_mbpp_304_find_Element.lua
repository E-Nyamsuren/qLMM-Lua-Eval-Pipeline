-- Write a luathon function to find element at a given index after number of rotations.
local function find_Element(arr, ranges, rotations, index)
    local i = 1
    while i <= rotations do
        local temp = arr[1]
        for j = 1, #arr - 1 do
            arr[j] = arr[j + 1]
        end
        arr[#arr] = temp
        i = i + 1
    end
    return arr[index]
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Element
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {{0, 2}, {0, 3}}, 2, 1), 3)
    lu.assertEquals(candidate({1, 2, 3, 4}, {{0, 1}, {0, 2}}, 1, 2), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {{0, 1}, {0, 2}}, 1, 1), 1)
end

os.exit(lu.LuaUnit.run())