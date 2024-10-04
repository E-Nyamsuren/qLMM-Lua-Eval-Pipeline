-- Write a luathon function to find the minimum difference between any two elements in a given table. https://www.geeksforgeeks.org/find-minimum-difference-pair/
local function find_min_diff(arr, n)
    -- Sort the array
    table.sort(arr)
    -- Initialize the minimum difference to be the maximum possible integer
    local min_diff = math.huge
    -- Iterate through the array
    for i = 1, n - 1 do
        -- Calculate the difference between the current element and the next element
        local diff = arr[i + 1] - arr[i]
        -- If the difference is smaller than the current minimum difference, update the minimum difference
        if diff < min_diff then
            min_diff = diff
        end
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