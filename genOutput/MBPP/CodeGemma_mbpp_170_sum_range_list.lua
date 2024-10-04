-- Write a function to find the sum of numbers in a table within a range specified by two indices.
local function sum_range_list(list1, m, n)
    local sum = 0
    for i = m, n do
        sum = sum + list1[i]
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_range_list
    lu.assertEquals(candidate({2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12}, 8, 10), 29)
    lu.assertEquals(candidate({2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12}, 5, 7), 16)
    lu.assertEquals(candidate({2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12}, 7, 10), 38)
end

os.exit(lu.LuaUnit.run())