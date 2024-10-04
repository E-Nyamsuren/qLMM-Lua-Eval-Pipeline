-- Write a luathon function to find a pair with highest product from a given table of integers.
local function max_Product(arr)
    -- Sort the array in ascending order
    table.sort(arr)
    -- Return the product of the last two elements in the sorted array
    return arr[#arr] * arr[#arr + 1]
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Product
    lu.assertEquals(candidate({1, 2, 3, 4, 7, 0, 8, 4}), {7, 8})
    lu.assertEquals(candidate({0, -1, -2, -4, 5, 0, -6}), {-4, -6})
    lu.assertEquals(candidate({1, 2, 3}), {2, 3})
end

os.exit(lu.LuaUnit.run())