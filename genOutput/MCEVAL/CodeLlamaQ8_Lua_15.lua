
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
    local colors = {}
    for i = 1, m do
        colors[i] = i
    end
    local function rec(i)
        if i == n then
            count = count + 1
            return
        end
        for j = 1, m do
            local c = colors[j]
            if i == 1 or i == n then
                if c == colors[i - 1] then
                    goto continue
                end
            else
                if c == colors[i - 1] or c == colors[i + 1] then
                    goto continue
                end
            end
            colors[i] = c
            rec(i + 1)
            ::continue::
        end
    end
    rec(1)
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