-- Write a function to find the sum of numbers in a table within a range specified by two indices.
local function sum_range_list(list1, m, n)
    local sum = 0
    for i = m, n do
        sum = sum + list1[i]
    end
    return sum
end
print(sum_range_list({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 3, 7)) -- Output: 25
print(sum_range_list({10, 20, 30, 40, 50, 60, 70, 80, 90, 100}, 1, 5)) -- Output: 150
print(sum_range_list({5, 15, 25, 35, 45, 55, 65, 75, 85, 95}, 2, 8)) -- Output: 275
print(sum_range_list({2, 4, 6, 8, 10, 12, 14, 16, 18, 20}, 5, 10)) -- Output: 150
print(sum_range_list({1, 3, 5, 7, 9, 11, 13, 15, 17, 19}, 1, 10)) -- Output: 100
print(sum_range_list({100, 200, 300, 400, 500, 600, 700, 800, 900, 1000}, 3, 7)) -- Output: 4500
print(sum_range_list({20, 40, 60, 80, 100, 120, 140, 160, 180, 200}, 2, 9)) -- Output: 1220
print(sum_range_list({10, 20, 30, 40, 50, 60, 70, 80, 90, 100}, 4, 6)) -- Output: 150
print(sum_range_list({5, 15, 25, 35, 45, 55, 65, 75, 85, 95}, 6, 10))

lu = require('luaunit')

function test_humaneval()
local candidate = sum_range_list
    lu.assertEquals(candidate({2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12}, 8, 10), 29)
    lu.assertEquals(candidate({2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12}, 5, 7), 16)
    lu.assertEquals(candidate({2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12}, 7, 10), 38)
end

os.exit(lu.LuaUnit.run())