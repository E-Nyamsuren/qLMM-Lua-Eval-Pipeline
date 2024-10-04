-- Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/luathon-exercises/lambda/luathon-lambda-exercise-24.php
local function divisible_by_digits(startnum, endnum)
    local function divisible_by_digit(num, digit)
        return num % digit == 0
    end
    local function divisible_by_digits_in_range(num)
        local digits = {}
        local num_copy = num
        while num_copy > 0 do
            digits[#digits + 1] = num_copy % 10
            num_copy = math.floor(num_copy / 10)
        end
        for _, digit in ipairs(digits) do
            if not divisible_by_digit(num, digit) then
                return false
            end
        end
        return true
    end
    local result = {}
    for i = startnum, endnum do
        if divisible_by_digits_in_range(i) then
            result[#result + 1] = i
        end
    end
    return result
end
print(table.unpack(divisible_by_digits(10, 100)))
print(table.unpack(divisible_by_digits(100, 200)))
print(table.unpack(divisible_by_digits(1000, 2000)))
print(table.unpack(divisible_by_digits(10000, 20000)))
print(table.unpack(divisible_by_digits(100000, 200000)))
print(table.unpack(divisible_by_digits(1000000, 2000000)))
print(table.unpack(divisible_by_digits(10000000, 20000000)))
print(table.unpack(divisible_by_digits(100000000, 200000000)))
print(table.unpack(divisible_by_digits(1000000000, 200000000

lu = require('luaunit')

function test_humaneval()
local candidate = divisible_by_digits
    lu.assertEquals(candidate(1, 22), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22})
    lu.assertEquals(candidate(1, 15), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15})
    lu.assertEquals(candidate(20, 25), {22, 24})
end

os.exit(lu.LuaUnit.run())