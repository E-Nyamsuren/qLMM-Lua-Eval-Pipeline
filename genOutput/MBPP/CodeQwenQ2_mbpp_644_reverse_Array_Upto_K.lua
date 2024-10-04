-- Write a luathon function to reverse a table upto a given position.
local function reverse_Array_Upto_K(input, k)
    -- Check if k is within the bounds of the input table
    if k > #input then
        return "Error: k is out of bounds"
    end
    
    -- Initialize left and right pointers
    local left = 1
    local right = k
    
    -- Reverse the elements from left to right
    while left < right do
        -- Swap the elements at left and right pointers
        input[left], input[right] = input[right], input[left]
        
        -- Move the pointers towards the center
        left = left + 1
        right = right - 1
    end
    
    -- Return the reversed table
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