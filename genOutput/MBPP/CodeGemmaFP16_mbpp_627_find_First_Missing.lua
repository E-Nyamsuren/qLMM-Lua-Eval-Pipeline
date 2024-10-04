-- Write a luathon function to find the smallest missing number from a sorted table of natural numbers.
local function find_First_Missing(array)
    local n = #array
    local min = array[1]
    local max = array[n]
    local expected_sum = (max - min + 1) * (min + max) / 2
    local actual_sum = 0
    for i = 1, n do
        actual_sum = actual_sum + array[i]
    end
    return expected_sum - actual_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_First_Missing
    lu.assertEquals(candidate({0, 1, 2, 3}), 4)
    lu.assertEquals(candidate({0, 1, 2, 6, 9}), 3)
    lu.assertEquals(candidate({2, 3, 5, 8, 9}), 0)
end

os.exit(lu.LuaUnit.run())