-- Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/luathon-exercises/lambda/luathon-lambda-exercise-24.php
local function divisible_by_digits(startnum, endnum)
    local function is_divisible_by_digits(n)
        local digits = {}
        local n_copy = n
        while n_copy > 0 do
            table.insert(digits, n_copy % 10)
            n_copy = math.floor(n_copy / 10)
        end
        for _, digit in ipairs(digits) do
            if digit == 0 or n % digit ~= 0 then
                return false
            end
        end
        return true
    end
    local result = {}
    for i = startnum, endnum do
        if is_divisible_by_digits(i) then
            table.insert(result, i)
        end
    end
    return result
end
print(divisible_by_digits(100, 200))
</code>

lu = require('luaunit')

function test_humaneval()
local candidate = divisible_by_digits
    lu.assertEquals(candidate(1, 22), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22})
    lu.assertEquals(candidate(1, 15), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15})
    lu.assertEquals(candidate(20, 25), {22, 24})
end

os.exit(lu.LuaUnit.run())