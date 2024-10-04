-- In this task, you will be given a string that represents a number of apples and oranges 
-- that are distributed in a basket of fruit this basket contains 
-- apples, oranges, and mango fruits. Given the string that represents the total number of 
-- the oranges and apples and an integer that represent the total number of the fruits 
-- in the basket return the number of the mango fruits in the basket.
-- for examble:
-- >>> fruit_distribution('5 apples and 6 oranges', 19)
-- 8
-- >>> fruit_distribution('0 apples and 1 oranges', 3)
-- 2
-- >>> fruit_distribution('2 apples and 3 oranges', 100)
-- 95
-- >>> fruit_distribution('100 apples and 1 oranges', 120)
-- 19
local function fruit_distribution(s, n)
    local apples, oranges = s:match("(%d+) apples and (%d+) oranges")
    local total_fruits = n - (apples + oranges)
    return total_fruits
end

lu = require('luaunit')

function test_humaneval()
local candidate = fruit_distribution
    lu.assertEquals(candidate('5 apples and 6 oranges', 19), 8)
    lu.assertEquals(candidate('5 apples and 6 oranges', 21), 10)
    lu.assertEquals(candidate('0 apples and 1 oranges', 3), 2)
    lu.assertEquals(candidate('1 apples and 0 oranges', 3), 2)
    lu.assertEquals(candidate('2 apples and 3 oranges', 100), 95)
    lu.assertEquals(candidate('2 apples and 3 oranges', 5), 0)
    lu.assertEquals(candidate('1 apples and 100 oranges', 120), 19)
end

os.exit(lu.LuaUnit.run())