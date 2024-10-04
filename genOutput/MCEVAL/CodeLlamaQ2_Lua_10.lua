-- No imports needed for Lua
--[[
Calculate the sum of even numbers in a given list.
    Parameters:
- numbers (list): A list of integers.
- size (int): The size of the list.
    Returns:
    int: The sum of even numbers in the input list.
    >>> calculate_even_sum({1,4,3,2,5}, 5)
    6
]]--
function calculate_even_sum(numbers, size)
    local sum = 0
    for i = 0, size - 1 do
        if numbers[i] % 2 == 0 then
            sum = sum + numbers[i]
        end
    end
    return sum
end

lu = require('luaunit')

function test_calculate_even_sum()
    local candidate = calculate_even_sum
    local sample1 = {1, 4, 3, 2, 5}
    local sample2 = {2, 2, 0, 0}
    local sample3 = {7, 11, 19} -- Additional test with no even numbers
    local sample4 = {12, 14, 16, 18, 20} -- Additional test with all even numbers

    lu.assertTrue(candidate(sample1, 5) == 6)
    lu.assertTrue(candidate(sample2, 4) == 4)
    lu.assertTrue(candidate(sample3, 3) == 0) -- Should return 0 because there are no even numbers
    lu.assertTrue(candidate(sample4, 5) == 12 + 14 + 16 + 18 + 20)

    -- print("All tests passed successfully.")
end

os.exit(lu.LuaUnit.run())