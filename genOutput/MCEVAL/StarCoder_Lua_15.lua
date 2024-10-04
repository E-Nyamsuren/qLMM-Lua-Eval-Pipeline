
--[[
Counts the number of different coloring methods for 'n' squares with 'm' colors,
considering the requirement that adjacent squares and the first/last squares
must have different colors.

Args:
- n (int): The number of squares.
- m (int): The number of colors.

Returns:
int: The count of different coloring methods satisfying the specified conditions.
Result is modulo 1000003.

Examples:
extraNumber(1, 1) => 1

--]]
function count_coloring_methods(n, m)
    local mod = 1000003
    local dp = {}
    for i = 0, n do
        dp[i] = {}
        for j = 0, m do
            dp[i][j] = 0
        end
    end
    dp[0][0] = 1
    for i = 1, n do
        for j = 0, m do
            for k = 0, m do
                if j ~= k then
                    dp[i][j] = (dp[i][j] + dp[i - 1][k]) % mod
                end
            end
        end
    end
    local result = 0
    for j = 0, m do
        result = (result + dp[n][j]) % mod
    end
    return result
end


lu = require('luaunit')

function testCountColoringMethods()
    local candidate = count_coloring_methods
    lu.assertTrue(candidate(1, 1) == 1)
    lu.assertTrue(candidate(2, 2) == 2)
    lu.assertTrue(candidate(3, 3) == 6)
    lu.assertTrue(candidate(4, 2) == 2)
    -- The following test is an example, as the expected result is not provided
    lu.assertTrue(candidate(1000, 10) == 566585)
    
    -- Additional test cases
    lu.assertTrue(candidate(2, 3) == 6)
    lu.assertTrue(candidate(1000, 1000) == 67911)
    lu.assertTrue(candidate(999, 66) == 501817)
    lu.assertTrue(candidate(5, 3) == 30) -- Example of an expected output

    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())