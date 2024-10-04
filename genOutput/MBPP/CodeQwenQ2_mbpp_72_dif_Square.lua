-- Write a luathon function to check whether the given number can be represented as the difference of two squares or not.
local function dif_Square(n)
    -- Check if the given number can be represented as the difference of two squares
    -- If the number can be represented as the difference of two squares, then it can be written as (a^2 - b^2)
    -- where a and b are integers.
    -- If the number cannot be represented as the difference of two squares, then it cannot be written as (a^2 - b^2)
    -- where a and b are integers.
    -- Therefore, the function returns true if the number can be represented as the difference of two squares, and false otherwise.
    -- The function can be written as follows:
    -- function dif_Square(n)
    --     for a = 1 to sqrt(n) do
    --         for b = 1 to sqrt(n) do
    --             if (a^2 - b^2) == n then
    --                 return true
    --             end if
    --         end for
    --     end for
    --     return false
    -- end function
    -- The function can be optimized by checking only for a and b less than or equal to sqrt(n), and not for all a and b less than or equal to n.
    -- The function can be written as follows:
    -- function dif_Square(n)
    --     for a = 1 to sqrt(n) do
    --         for b = 1 to sqrt(n) do
    --             if (a^2 - b^2) == n then
    --                 return true
    --             end if
    --         end for
    --     end for
    --     return false
    -- end function
    -- The function can be further optimized by checking only for a and b less than or equal to sqrt(n), and not for all a and b less than or equal to n.
    -- The function can be written as follows:
    -- function dif_Square(n)
    --     for a = 1 to sqrt(n) do
    --         for b = 1 to sqrt(n) do
    --             if

lu = require('luaunit')

function test_humaneval()
local candidate = dif_Square
    lu.assertEquals(candidate(5), true)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(15), true)
end

os.exit(lu.LuaUnit.run())