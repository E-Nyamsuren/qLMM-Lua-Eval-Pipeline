-- Write a luathon function to reverse a table upto a given position.
local function reverse_Array_Upto_K(input, k)
    -- Check if k is greater than the length of the input table
    if k > #input then
        return input
    end
    -- Initialize two pointers, one at the start and one at the end of the input table
    local start = 1
    local end_ = k
    -- Loop until the start pointer is less than the end pointer
    while start < end_ do
        -- Swap the elements at the start and end pointers
        input[start], input[end_] = input[end_], input[start]
        -- Move the start pointer one step forward and the end pointer one step backward
        start = start + 1
        end_ = end_ - 1
    end
    -- Return the modified input table
    return input
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_Array_Upto_K
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, 4), {4, 3, 2, 1, 5, 6})
    lu.assertEquals(candidate({4, 5, 6, 7}, 2), {5, 4, 6, 7})
    lu.assertEquals(candidate({9, 8, 7, 6, 5}, 3), {7, 8, 9, 6, 5})
end

os.exit(lu.LuaUnit.run())