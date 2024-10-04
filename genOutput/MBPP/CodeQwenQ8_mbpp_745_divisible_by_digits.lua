-- Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/luathon-exercises/lambda/luathon-lambda-exercise-24.php
local function divisible_by_digits(startnum, endnum)
    local divisible_numbers = {}
    for i = startnum, endnum do
        local digits = tostring(i)
        local divisible = true
        for j = 1, #digits do
            if i % tonumber(digits:sub(j, j)) ~= 0 then
                divisible = false
                break
            end
        end
        if divisible then
            table.insert(divisible_numbers, i)
        end
    end
    return divisible_numbers
end

lu = require('luaunit')

function test_humaneval()
local candidate = divisible_by_digits
    lu.assertEquals(candidate(1, 22), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22})
    lu.assertEquals(candidate(1, 15), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15})
    lu.assertEquals(candidate(20, 25), {22, 24})
end

os.exit(lu.LuaUnit.run())