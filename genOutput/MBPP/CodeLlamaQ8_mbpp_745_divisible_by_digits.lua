-- Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/luathon-exercises/lambda/luathon-lambda-exercise-24.php
local function divisible_by_digits(startnum, endnum)
    local function divisible_by(num, digit)
        return num % digit == 0
    end
    local function divisible_by_all_digits(num)
        local digits = {string.match(num, "%d")}
        for _, digit in ipairs(digits) do
            if not divisible_by(num, digit) then
                return false
            end
        end
        return true
    end
    local result = {}
    for num = startnum, endnum do
        if divisible_by_all_digits(num) then
            table.insert(result, num)
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = divisible_by_digits
    lu.assertEquals(candidate(1, 22), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22})
    lu.assertEquals(candidate(1, 15), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15})
    lu.assertEquals(candidate(20, 25), {22, 24})
end

os.exit(lu.LuaUnit.run())