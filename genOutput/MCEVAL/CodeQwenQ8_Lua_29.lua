-- No imports required for Lua
--[[
Evaluate the grade for an input integer.

Parameters:
- score (integer): The integer score to be evaluated.

Returns:
​​    char: The grade corresponding to the input score.
​​         If the score is between 90 and 100 (inclusive), returns 'A'.
​​         Otherwise, returns 'B'.

Example usage:
    print(evaluate_integer_grade(90)) -- Output: A
--]]
function evaluate_integer_grade(score)
    if score >= 90 and score <= 100 then
        return 'A'
    else
        return 'B'
    end
end

lu = require('luaunit')

function test_evaluate_integer_grade()
    local candidate = evaluate_integer_grade
    lu.assertTrue(candidate(90) == 'A') -- Corrected the assertion to compare against character literals
    lu.assertTrue(candidate(89) == 'B') -- Additional test for a score less than 90
    lu.assertTrue(candidate(95) == 'A') -- Additional test within the 'A' range
    lu.assertTrue(candidate(100) == 'A') -- Additional test for the boundary condition
    lu.assertTrue(candidate(101) == 'B') -- Additional test for a score greater than 100

    -- Print "All tests passed" if all assertions hold true (optional)
    -- print("All tests passed")
end

os.exit(lu.LuaUnit.run())