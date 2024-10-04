-- Write a function to compute the sum of digits of each number of a given table.
local function sum_of_digits(nums)
    local function sum_of_digits_helper(num)
        local sum = 0
        while num > 0 do
            sum = sum + num % 10
            num = math.floor(num / 10)
        end
        return sum
    end
    local result = {}
    for _, num in ipairs(nums) do
        table.insert(result, sum_of_digits_helper(num))
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_of_digits
    lu.assertEquals(candidate({10, 2, 56}), 14)
    lu.assertEquals(candidate({{10, 20, 4, 5, 'b', 70, 'a'}}), 19)
    lu.assertEquals(candidate({10, 20, -4, 5, -70}), 19)
end

os.exit(lu.LuaUnit.run())