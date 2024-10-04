-- Write a function to find the area of a rectangle.
local function rectangle_area(l, b)
    return l * b
end
print(rectangle_area(10, 5)) -- Output: 50
print(rectangle_area(7, 3))  -- Output: 21
print(rectangle_area(4, 9))  -- Output: 36
print(rectangle_area(6, 2))  -- Output: 12
print(rectangle_area(8, 4))  -- Output: 32
print(rectangle_area(5, 5))  -- Output: 25
print(rectangle_area(3, 7))  -- Output: 21
print(rectangle_area(2, 8))  -- Output: 16
print(rectangle_area(1, 9))  -- Output: 9
print(rectangle_area(9, 1))  -- Output: 9
print(rectangle_area(7, 1))  -- Output: 7
print(rectangle_area(5, 1))  -- Output: 5
print(rectangle_area(3, 1))  -- Output: 3
print(rectangle_area(1, 1))  -- Output: 1
print(rectangle_area(1, 2))  -- Output: 2
print(rectangle_area(1, 3))  -- Output: 3
print(rectangle_area(1, 4))  -- Output: 4
print(rectangle_area(1, 5))  -- Output: 5
print(rectangle_area(1, 6))  -- Output: 6
print(rectangle_area(1, 7))  -- Output: 7
print(rectangle_area(1, 8))  -- Output: 8
print(rectangle_area(1, 9))  -- Output: 9
print(rectangle_area(1, 10)) -- Output: 10
print(rectangle_area(1, 11)) -- Output: 11
print(rectangle_area(1, 12)) -- Output: 12
print(rectangle_area(1,

lu = require('luaunit')

function test_humaneval()
local candidate = rectangle_area
    lu.assertEquals(candidate(10, 20), 200)
    lu.assertEquals(candidate(10, 5), 50)
    lu.assertEquals(candidate(4, 2), 8)
end

os.exit(lu.LuaUnit.run())