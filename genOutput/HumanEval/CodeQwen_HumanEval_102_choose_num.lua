-- This function takes two positive numbers x and y and returns the
-- biggest even integer number that is in the range [x, y] inclusive. If 
-- there's no such number, then the function should return -1.
-- For example:
-- >>> choose_num(12, 15)
-- 14
-- >>> choose_num(13, 12)
-- -1
local function choose_num(x, y)
    if x > y then
        return -1
    end
    local result = y
    if y % 2 ~= 0 then
        result = y - 1
    end
    if result < x then
        return -1
    end
    return result
end
print(choose_num(12, 15)) -- Should print 14
print(choose_num(13, 12)) -- Should print -1
print(choose_num(10, 10)) -- Should print 10
print(choose_num(11, 11)) -- Should print -1
print(choose_num(8, 9))   -- Should print 8
print(choose_num(9, 9))   -- Should print -1
print(choose_num(1, 2))   -- Should print 2
print(choose_num(2, 1))   -- Should print -1
print(choose_num(1, 1))   -- Should print 1
print(choose_num(0, 0))   -- Should print -1
print(choose_num(-1, 1))  -- Should print 0
print(choose_num(-2, 2))  -- Should print 2
print(choose_num(-3, 3))  -- Should print 2
print(choose_num(-4, 4))  -- Should print 4
print(choose_num(-5, 5))  -- Should print 4
print(choose_num(-6, 6))  -- Should print 6
print(choose_num(-7, 7))  -- Should print 6
print(choose_num(-8, 8))  -- Should print 8
print(choose_num(-9, 9))  -- Should print 8
print(choose_num(-10, 10

lu = require('luaunit')

function test_humaneval()
local candidate = choose_num
    lu.assertEquals(candidate(12, 15), 14)
    lu.assertEquals(candidate(13, 12), -1)
    lu.assertEquals(candidate(33, 12354), 12354)
    lu.assertEquals(candidate(5234, 5233), -1)
    lu.assertEquals(candidate(6, 29), 28)
    lu.assertEquals(candidate(27, 10), -1)
    lu.assertEquals(candidate(7, 7), -1)
    lu.assertEquals(candidate(546, 546), 546)
end

os.exit(lu.LuaUnit.run())