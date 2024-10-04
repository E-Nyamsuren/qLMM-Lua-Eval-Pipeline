-- Write a luathon function to find the minimum difference between any two elements in a given table. https://www.geeksforgeeks.org/find-minimum-difference-pair/
local function find_min_diff(arr, n)
    local min_diff = 1000000
    local min_index1 = 0
    local min_index2 = 0
    for i = 0, n-1 do
        for j = i+1, n-1 do
            if arr[j] - arr[i] < min_diff then
                min_diff = arr[j] - arr[i]
                min_index1 = i
                min_index2 = j
            end
        end
    end
    print(min_index1, min_index2)
    return min_diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_min_diff
    lu.assertEquals(candidate({1, 5, 3, 19, 18, 25}, 6), 1)
    lu.assertEquals(candidate({4, 3, 2, 6}, 4), 1)
    lu.assertEquals(candidate({30, 5, 20, 9}, 4), 4)
end

os.exit(lu.LuaUnit.run())