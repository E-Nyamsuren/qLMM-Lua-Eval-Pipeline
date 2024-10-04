-- Write a function to find the second smallest number in a table.
local function second_smallest(numbers)
    -- Check if the table has at least two elements
    if #numbers < 2 then
        return nil
    end
    
    -- Initialize the smallest and second smallest numbers
    local smallest = numbers[1]
    local second_smallest = numbers[2]
    
    -- Iterate through the table to find the smallest and second smallest numbers
    for i = 3, #numbers do
        if numbers[i] < smallest then
            second_smallest = smallest
            smallest = numbers[i]
        elseif numbers[i] < second_smallest then
            second_smallest = numbers[i]
        end
    end
    
    -- Return the second smallest number
    return second_smallest
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