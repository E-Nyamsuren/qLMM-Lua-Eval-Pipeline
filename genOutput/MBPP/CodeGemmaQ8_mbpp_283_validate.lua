-- Write a luathon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself.
local function validate(n)
    local t = {}
    for i = 1, n do
        t[i] = 0
    end
    local s = tostring(n)
    for i = 1, #s do
        t[s:sub(i, i)] = t[s:sub(i, i)] + 1
    end
    for i = 1, n do
        if t[i] > i then
            return false
        end
    end
    return true
end
print(validate(123))
print(validate(121))
print(validate(1234))
print(validate(12345))
print(validate(123456))
print(validate(1234567))
print(validate(12345678))
print(validate(123456789))
print(validate(1234567890))
print(validate(12345678901))
print(validate(123456789012))
print(validate(1234567890123))
print(validate(12345678901234))
print(validate(123456789012345))
print(validate(1234567890123456))
print(validate(12345678901234567))
print(validate(123456789012345678))
print(validate(1234567890123456789))
print(validate(12345678901234567890))
print(validate(123456789012345678901))
print(validate(123

lu = require('luaunit')

function test_humaneval()
local candidate = validate
    lu.assertEquals(candidate(1234), true)
    lu.assertEquals(candidate(51241), false)
    lu.assertEquals(candidate(321), true)
end

os.exit(lu.LuaUnit.run())