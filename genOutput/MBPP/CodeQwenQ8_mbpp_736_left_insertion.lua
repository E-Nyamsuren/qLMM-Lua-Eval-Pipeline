-- Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/luathon-exercises/data-structures-and-algorithms/luathon-data-structure-exercise-24.php
local function left_insertion(a, x)
    local i = 1
    while i <= #a and a[i] < x do
        i = i + 1
    end
    return i
end

lu = require('luaunit')

function test_humaneval()
local candidate = left_insertion
    lu.assertEquals(candidate({1, 2, 4, 5}, 6), 4)
    lu.assertEquals(candidate({1, 2, 4, 5}, 3), 2)
    lu.assertEquals(candidate({1, 2, 4, 5}, 7), 4)
end

os.exit(lu.LuaUnit.run())