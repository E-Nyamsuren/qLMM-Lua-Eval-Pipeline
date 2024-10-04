-- Write a function to return the sum of all divisors of a number.
local function sum_div(number)
    local sum = 0
    for i = 1, number do
        if number % i == 0 then
            sum = sum + i
        end
    end
    return sum
end
print(sum_div(10))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = sum_div
    lu.assertEquals(candidate(8), 7)
    lu.assertEquals(candidate(12), 16)
    lu.assertEquals(candidate(7), 1)
end

os.exit(lu.LuaUnit.run())