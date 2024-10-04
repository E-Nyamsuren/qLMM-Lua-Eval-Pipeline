-- Write a luathon function to find the last digit in factorial of a given number.
local function last_Digit_Factorial(n)
    local fact = 1
    for i = 1, n do
        fact = fact * i
    end
    return fact % 10
end
print(last_Digit_Factorial(5))


lu = require('luaunit')

function test_humaneval()
local candidate = last_Digit_Factorial
    lu.assertEquals(candidate(4), 4)
    lu.assertEquals(candidate(21), 0)
    lu.assertEquals(candidate(30), 0)
end

os.exit(lu.LuaUnit.run())