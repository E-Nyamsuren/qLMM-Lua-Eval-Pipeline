-- Write a luathon function to find the minimum difference between any two elements in a given table. https://www.geeksforgeeks.org/find-minimum-difference-pair/
local function find_min_diff(arr, n)
    local min_diff = math.huge
    local min_diff_index = 0
    local i = 1
    local j = 2
    while j < n do
        local diff = arr[j] - arr[i]
        if diff < min_diff then
            min_diff = diff
            min_diff_index = i
        end
        j = j + 1
    end
    return min_diff_index, min_diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_min_diff
    lu.assertEquals(candidate({1, 5, 3, 19, 18, 25}, 6), 1)
    lu.assertEquals(candidate({4, 3, 2, 6}, 4), 1)
    lu.assertEquals(candidate({30, 5, 20, 9}, 4), 4)
end

os.exit(lu.LuaUnit.run())