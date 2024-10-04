
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
    local count = 0
    local color_count = {}
    for i = 1, m do
        color_count[i] = 0
    end
    local function dfs(cur, color)
        if cur == n then
            count = count + 1
            return
        end
        local color_count_copy = {}
        for i = 1, m do
            color_count_copy[i] = color_count[i]
        end
        for i = 1, m do
            if color_count_copy[i] == 0 then
                color_count_copy[i] = 1
                color_count[i] = 1
                dfs(cur + 1, i)
                color_count[i] = 0
                color_count[color] = color_count[color] + 1
            end
        end
    end
    dfs(1, 1)
    return count
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