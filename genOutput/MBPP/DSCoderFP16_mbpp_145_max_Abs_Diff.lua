-- Write a luathon function to find the maximum difference between any two elements in a given table.
local function max_Abs_Diff(arr)
    -- Sort the array
    table.sort(arr)
    -- Return the absolute difference between the first and last element
    return math.abs(arr[1] - arr[#arr])
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Abs_Diff
    lu.assertEquals(candidate({2, 1, 5, 3}), 4)
    lu.assertEquals(candidate({9, 3, 2, 5, 1}), 8)
    lu.assertEquals(candidate({3, 2, 1}), 2)
end

os.exit(lu.LuaUnit.run())