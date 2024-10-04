-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
    local r = 0
    local t = n
    while t > 0 do
        r = r * 10 + t % 10
        t = math.floor(t / 10)
    end
    return n == r * 2 + 1
end
print(checks(123))
print(checks(1234))
print(checks(12345))
print(checks(123456))
print(checks(1234567))
print(checks(12345678))
print(checks(123456789))
print(checks(1234567890))
print(checks(12345678901))
print(checks(123456789012))
print(checks(1234567890123))
print(checks(12345678901234))
print(checks(123456789012345))
print(checks(1234567890123456))
print(checks(12345678901234567))
print(checks(123456789012345678))
print(checks(1234567890123456789))
print(checks(12345678901234567890))
print(checks(123456789012345678901))
print(checks(1234567890123456789012))
print(checks(12345678901234567890123))
print(checks(1234567890123

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())