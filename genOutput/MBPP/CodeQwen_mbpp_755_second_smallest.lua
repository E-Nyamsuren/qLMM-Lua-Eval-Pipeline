-- Write a function to find the second smallest number in a table.
local function second_smallest(numbers)
    -- Sort the numbers in ascending order
    table.sort(numbers)
    -- Return the second element in the sorted table
    return numbers[2]
end

lu = require('luaunit')

function test_humaneval()
local candidate = second_smallest
    lu.assertEquals(candidate({1, 2, -8, -2, 0, -2}), -2)
    lu.assertEquals(candidate({1, 1, -0.5, 0, 2, -2, -2}), -0.5)
    lu.assertEquals(candidate({2, 2}), None)
    lu.assertEquals(candidate({2, 2, 2}), None)
end

os.exit(lu.LuaUnit.run())