-- Write a luathon function to find the first digit of a given number.
local function first_Digit(n)
    local first_Digit = n
    while first_Digit > 10 do
        first_Digit = first_Digit / 10
    end
    return first_Digit
end
print(first_Digit(12345))
print(first_Digit(123456789))
print(first_Digit(1234567890))
print(first_Digit(12345678901))
print(first_Digit(123456789012))
print(first_Digit(1234567890123))
print(first_Digit(12345678901234))
print(first_Digit(123456789012345))
print(first_Digit(1234567890123456))
print(first_Digit(12345678901234567))
print(first_Digit(123456789012345678))
print(first_Digit(1234567890123456789))
print(first_Digit(12345678901234567890))
print(first_Digit(123456789012345678901))
print(first_Digit(1234567890123456789012))
print(first_Digit(12345678901234567890123))
print(first_Digit(123456789012345678901234))
print(first_Digit(1234567890123456789012345))
print(first_

lu = require('luaunit')

function test_humaneval()
local candidate = first_Digit
    lu.assertEquals(candidate(123), 1)
    lu.assertEquals(candidate(456), 4)
    lu.assertEquals(candidate(12), 1)
end

os.exit(lu.LuaUnit.run())