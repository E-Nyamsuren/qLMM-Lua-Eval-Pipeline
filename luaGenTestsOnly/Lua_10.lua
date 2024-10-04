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