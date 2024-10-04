-- Write a function to determine if the sum of the divisors of two integers are the same.
local function are_equivalent(num1, num2)
    local divisors1 = {}
    local divisors2 = {}
    for i = 1, num1 do
        if num1 % i == 0 then
            table.insert(divisors1, i)
        end
    end
    for i = 1, num2 do
        if num2 % i == 0 then
            table.insert(divisors2, i)
        end
    end
    if #divisors1 == #divisors2 then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = are_equivalent
    lu.assertEquals(candidate(36, 57), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(23, 47), true)
end

os.exit(lu.LuaUnit.run())