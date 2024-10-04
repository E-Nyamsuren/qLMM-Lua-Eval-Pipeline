-- Write a luathon function to find the minimum difference between any two elements in a given table. https://www.geeksforgeeks.org/find-minimum-difference-pair/
local function find_min_diff(arr, n)
    -- Initialize minimum difference to be very large
    local min_diff = math.huge
    -- Initialize minimum element to be the first element in the array
    local min_elem = arr[1]
    -- Initialize maximum element to be the first element in the array
    local max_elem = arr[1]
    -- Iterate over the array
    for i = 1, n do
        -- Update minimum and maximum elements
        min_elem = math.min(min_elem, arr[i])
        max_elem = math.max(max_elem, arr[i])
        -- Update minimum difference
        min_diff = math.min(min_diff, max_elem - min_elem)
    end
    -- Return the minimum difference
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