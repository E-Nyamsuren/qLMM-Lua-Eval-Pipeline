-- "
-- This function will take a table of integers. For all entries in the table, the function shall square the integer entry if its index is a 
-- multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not 
-- change the entries in the table whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. 
-- Examples:
-- >>> lst
-- {1, 2, 3}
-- >>> lst
-- {}
-- >>> lst
-- {-1, -5, 2, -1, -5}
local function sum_squares(lst)
    local sum = 0
    for i, v in ipairs(lst) do
        if i % 3 == 0 then
            sum = sum + v * v * v
        elseif i % 4 == 0 and i % 3 ~= 0 then
            sum = sum + v * v * v
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_squares
    lu.assertEquals(candidate({1, 2, 3}), 6)
    lu.assertEquals(candidate({1, 4, 9}), 14)
    lu.assertEquals(candidate({}), 0)
    lu.assertEquals(candidate({1, 1, 1, 1, 1, 1, 1, 1, 1}), 9)
    lu.assertEquals(candidate({-1, -1, -1, -1, -1, -1, -1, -1, -1}), -3)
    lu.assertEquals(candidate({0}), 0)
    lu.assertEquals(candidate({-1, -5, 2, -1, -5}), -126)
    lu.assertEquals(candidate({-56, -99, 1, 0, -2}), 3030)
    lu.assertEquals(candidate({-1, 0, 0, 0, 0, 0, 0, 0, -1}), 0)
    lu.assertEquals(candidate({-16, -9, -2, 36, 36, 26, -20, 25, -40, 20, -4, 12, -26, 35, 37}), -14196)
    lu.assertEquals(candidate({-1, -3, 17, -1, -15, 13, -1, 14, -14, -12, -5, 14, -14, 6, 13, 11, 16, 16, 4, 10}), -1448)
end

os.exit(lu.LuaUnit.run())