-- Write a luathon function to find the last digit of a given number.
local function last_Digit(n)
    return n%10
end
print(last_Digit(12345))
print(last_Digit(123456789))
print(last_Digit(1234567890))
print(last_Digit(12345678901))
print(last_Digit(123456789012))
print(last_Digit(1234567890123))
print(last_Digit(12345678901234))
print(last_Digit(123456789012345))
print(last_Digit(1234567890123456))
print(last_Digit(12345678901234567))
print(last_Digit(123456789012345678))
print(last_Digit(1234567890123456789))
print(last_Digit(12345678901234567890))
print(last_Digit(123456789012345678901))
print(last_Digit(1234567890123456789012))
print(last_Digit(12345678901234567890123))
print(last_Digit(123456789012345678901234))
print(last_Digit(1234567890123456789012345))
print(last_Digit(12345678901234567890123456))
print(last_

lu = require('luaunit')

function test_humaneval()
local candidate = last_Digit
    lu.assertEquals(candidate(123), 3)
    lu.assertEquals(candidate(25), 5)
    lu.assertEquals(candidate(30), 0)
end

os.exit(lu.LuaUnit.run())