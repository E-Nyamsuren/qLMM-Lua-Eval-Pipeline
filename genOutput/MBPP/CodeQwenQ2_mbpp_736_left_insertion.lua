-- Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/luathon-exercises/data-structures-and-algorithms/luathon-data-structure-exercise-24.php
local function left_insertion(a, x)
    for i = 1, #a do
        if a[i] > x then
            return i
        end
    end
    return #a + 1
end
print(left_insertion({1, 2, 3, 4, 5}, 6))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 1))  -- 1
print(left_insertion({1, 2, 3, 4, 5}, 3))  -- 3
print(left_insertion({1, 2, 3, 4, 5}, 0))  -- 1
print(left_insertion({1, 2, 3, 4, 5}, 5))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 4))  -- 5
print(left_insertion({1, 2, 3, 4, 5}, 2))  -- 3
print(left_insertion({1, 2, 3, 4, 5}, 7))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 8))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 9))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 10))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 11))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 12))  -- 6
print(left_insertion({1, 2, 3, 4, 5}, 

lu = require('luaunit')

function test_humaneval()
local candidate = left_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())