
--[[
Given a non-negative integer num, repeatedly add all its digits until
the result has only one digit.
For example:
    >>> addDigits(38)
    2
    Because 3 + 8 = 11, and 1 + 1 = 2. Since 2 has only one digit, 2 is the result.
]]--
function addDigits(num)
    if num == 0 then
        return 0
    else
        local sum = 0
        while num > 0 do
            sum = sum + num % 10
            num = math.floor(num / 10)
        end
        return addDigits(sum)
    end
end

lu = require('luaunit')

function testAddDigits()
    local candidate = addDigits
    lu.assertTrue(candidate(38) == 2)
    lu.assertTrue(candidate(0) == 0)
    lu.assertTrue(candidate(9) == 9)
    lu.assertTrue(candidate(123) == 6)
    lu.assertTrue(candidate(456) == 6)
    lu.assertTrue(candidate(9999) == 9)
    lu.assertTrue(candidate(100) == 1)
    lu.assertTrue(candidate(1010) == 2)
    lu.assertTrue(candidate(1234) == 1)
    lu.assertTrue(candidate(9876) == 3)
    lu.assertTrue(candidate(199) == 1)
end

os.exit(lu.LuaUnit.run())