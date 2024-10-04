-- Write a luathon function to find the last digit in factorial of a given number.
local function last_Digit_Factorial(n)
    local last_digit = 1
    if n == 0 then
        return 1
    else
        for i = 2, n do
            last_digit = (last_digit * (i % 10)) % 10
        end
        return last_digit
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = last_Digit_Factorial
    lu.assertEquals(candidate(4), 4)
    lu.assertEquals(candidate(21), 0)
    lu.assertEquals(candidate(30), 0)
end

os.exit(lu.LuaUnit.run())