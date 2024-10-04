-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)
    local numbers = {a, b, c}
    table.sort(numbers)
    return numbers[2]
end
print(median_numbers(3, 1, 2)) -- 2
print(median_numbers(10, 20, 30)) -- 20
print(median_numbers(-5, 0, 5)) -- 0
print(median_numbers(2.5, 3.5, 4.5)) -- 3.5
print(median_numbers(1.1, 2.2, 3.3, 4.4)) -- 2.2
print(median_numbers(0, 0, 0)) -- 0
print(median_numbers(1, 2, 3, 4, 5)) -- 3
print(median_numbers(-10, -20, -30, -40, -50)) -- -30
print(median_numbers(1.1, 2.2, 3.3, 4.4, 5.5)) -- 2.2
print(median_numbers(1, 2, 3, 4, 5, 6)) -- 3.5
print(median_numbers(-10, -20, -30, -40, -50, -60)) -- -30
print(median_numbers(1.1, 2.2, 3.3, 4.4, 5.5, 6.6)) -- 2.2
print(median_numbers(1, 2, 3, 4, 5, 6, 7)) -- 4.5
print(median_numbers(-10, -20, -30, -40, -50, -60, -70)) -- -30
print(median_numbers(1.1, 2.2, 3.3, 4.4, 5.5, 6.6, 7.7)) -- 3.5
print(median_numbers

lu = require('luaunit')

function test_humaneval()
local candidate = median_numbers
    lu.assertEquals(candidate(25, 55, 65), 55.0)
    lu.assertEquals(candidate(20, 10, 30), 20.0)
    lu.assertEquals(candidate(15, 45, 75), 45.0)
end

os.exit(lu.LuaUnit.run())