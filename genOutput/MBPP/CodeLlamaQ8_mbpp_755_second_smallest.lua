-- Write a function to find the second smallest number in a table.
local function second_smallest(numbers)
    local smallest = numbers[1]
    for i = 2, #numbers do
        if numbers[i] < smallest then
            smallest = numbers[i]
        end
    end
    local second_smallest = numbers[1]
    for i = 2, #numbers do
        if numbers[i] > smallest and numbers[i] < second_smallest then
            second_smallest = numbers[i]
        end
    end
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