-- Write a function to round every number of a given table of numbers and print the total sum multiplied by the length of the table.
local function round_and_sum(list1)
    local sum = 0
    for i = 1, #list1 do
        list1[i] = math.floor(list1[i] + 0.5)
        sum = sum + list1[i]
    end
    return sum * #list1
end
print(round_and_sum({1.2, 2.3, 3.4, 4.5, 5.6})) -- 30
print(round_and_sum({1.2, 2.3, 3.4, 4.5, 5.6, 6.7, 7.8, 8.9, 9.1, 10.2})) -- 120
print(round_and_sum({1.2, 2.3, 3.4, 4.5, 5.6, 6.7, 7.8, 8.9, 9.1, 10.2, 11.3, 12.4, 13.5, 14.6, 15.7, 16.8, 17.9, 18.1, 19.2, 20.3})) -- 360
print(round_and_sum({1.2, 2.3, 3.4, 4.5, 5.6, 6.7, 7.8, 8.9, 9.1, 10.2, 11.3, 12.4, 13.5, 14.6, 15.7, 16.8, 17.9, 18.1, 19.2, 20.3, 21.4, 22.5, 23.6, 24.7, 25.8, 26.9, 27.1, 28.2, 29.3, 30.4, 3

lu = require('luaunit')

function test_humaneval()
local candidate = round_and_sum
    lu.assertEquals(candidate({22.4, 4.0, -16.22, -9.1, 11.0, -12.22, 14.2, -5.2, 17.5}), 243)
    lu.assertEquals(candidate({5, 2, 9, 24.3, 29}), 345)
    lu.assertEquals(candidate({25.0, 56.7, 89.2}), 513)
end

os.exit(lu.LuaUnit.run())