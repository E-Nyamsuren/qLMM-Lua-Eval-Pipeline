-- Given the lengths of the three sides of a triangle. Return the area of
-- the triangle rounded to 2 decimal points if the three sides form a valid triangle. 
-- Otherwise return -1
-- Three sides make a valid triangle when the sum of any two sides is greater 
-- than the third side.
-- Example:
-- >>> triangle_area(3, 4, 5)
-- 6.0
-- >>> triangle_area(1, 2, 10)
-- -1
local function triangle_area(a, b, c)
    if a + b > c and a + c > b and b + c > a then
        local s = (a + b + c) / 2
        return math.floor((s * (s - a) * (s - b) * (s - c)) ^ 0.5 * 100) / 100
    else
        return -1
    end
end
print(triangle_area(3, 4, 5)) -- 6.0
print(triangle_area(1, 2, 10)) -- -1
print(triangle_area(5, 5, 5)) -- 10.83
print(triangle_area(10, 10, 10)) -- 43.3
print(triangle_area(2, 2, 3)) -- -1
print(triangle_area(6, 8, 10)) -- 24.0
print(triangle_area(7, 7, 7)) -- 21.21
print(triangle_area(8, 8, 8)) -- 26.83
print(triangle_area(9, 9, 9)) -- 31.42
print(triangle_area(10, 10, 10)) -- 43.3
print(triangle_area(11, 11, 11)) -- 48.0
print(triangle_area(12, 12, 12)) -- 54.83
print(triangle_area(13, 13, 13)) -- 62.42
print(triangle_area(14, 14, 14)) -- 70.83
print(triangle_area(15, 15, 15)) -- 79.3
print(triangle_

lu = require('luaunit')

function test_humaneval()
local candidate = triangle_area
    lu.assertEquals(candidate(3, 4, 5), 6.0)
    lu.assertEquals(candidate(1, 2, 10), -1)
    lu.assertEquals(candidate(4, 8, 5), 8.18)
    lu.assertEquals(candidate(2, 2, 2), 1.73)
    lu.assertEquals(candidate(1, 2, 3), -1)
    lu.assertEquals(candidate(10, 5, 7), 16.25)
    lu.assertEquals(candidate(2, 6, 3), -1)
    lu.assertEquals(candidate(1, 1, 1), 0.43)
    lu.assertEquals(candidate(2, 2, 10), -1)
end

os.exit(lu.LuaUnit.run())