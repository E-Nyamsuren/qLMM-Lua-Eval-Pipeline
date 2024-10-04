-- Write a luathon function to find the first digit of a given number.
local function first_Digit(n)
    local first_Digit = n % 10
    return first_Digit
end
print(first_Digit(123456789))


lu = require('luaunit')

function test_humaneval()
local candidate = first_Digit
    lu.assertEquals(candidate(123), 1)
    lu.assertEquals(candidate(456), 4)
    lu.assertEquals(candidate(12), 1)
end

os.exit(lu.LuaUnit.run())