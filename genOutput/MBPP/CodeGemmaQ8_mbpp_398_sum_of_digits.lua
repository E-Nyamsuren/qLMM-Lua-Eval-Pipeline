-- Write a function to compute the sum of digits of each number of a given table.
local function sum_of_digits(nums)
    local sum = 0
    for _, num in ipairs(nums) do
        local digits = tostring(num)
        for i = 1, #digits do
            sum = sum + tonumber(digits:sub(i, i))
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_of_digits
    lu.assertEquals(candidate({10, 2, 56}), 14)
    lu.assertEquals(candidate({{10, 20, 4, 5, 'b', 70, 'a'}}), 19)
    lu.assertEquals(candidate({10, 20, -4, 5, -70}), 19)
end

os.exit(lu.LuaUnit.run())