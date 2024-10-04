-- Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/luathon-exercises/lambda/luathon-lambda-exercise-24.php
local function divisible_by_digits(startnum, endnum)
    return (function(startnum, endnum)
        local result = {}
        for i = startnum, endnum do
            local str_num = tostring(i)
            local all_digits_divisible = true
            for j = 1, #str_num do
                local digit = tonumber(str_num:sub(j, j))
                if digit ~= 0 and i % digit ~= 0 then
                    all_digits_divisible = false
                    break
                end
            end
            if all_digits_divisible then
                table.insert(result, i)
            end
        end
        return result
    end)(startnum, endnum)
end

lu = require('luaunit')

function test_humaneval()
local candidate = divisible_by_digits
    lu.assertEquals(candidate(1, 22), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22})
    lu.assertEquals(candidate(1, 15), {1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15})
    lu.assertEquals(candidate(20, 25), {22, 24})
end

os.exit(lu.LuaUnit.run())