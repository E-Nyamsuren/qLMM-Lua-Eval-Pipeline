-- Write a luathon function to find element at a given index after number of rotations.
local function find_Element(arr, ranges, rotations, index)
    local len = #arr
    rotations = rotations % len
    local start = ranges[1]
    local endd = ranges[2]
    local offset = rotations % len
    local start_ = start - 1
    local end_ = endd - 1
    local res = {}
    for i = 0, end_ - start_ do
        res[i] = arr[(start_ + i + 1 + offset) % len]
    end
    return res[index]
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Element
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {{0, 2}, {0, 3}}, 2, 1), 3)
    lu.assertEquals(candidate({1, 2, 3, 4}, {{0, 1}, {0, 2}}, 1, 2), 3)
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {{0, 1}, {0, 2}}, 1, 1), 1)
end

os.exit(lu.LuaUnit.run())