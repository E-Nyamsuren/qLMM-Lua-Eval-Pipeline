-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
    local s = tostring(n)
    local r = tonumber(string.reverse(s))
    if n == r + 1 then
        return true
    else
        return false
    end
end
print(checks(1234))
print(checks(12345))
print(checks(12346))
print(checks(123466))
print(checks(1234666))
print(checks(12346666))
print(checks(123466666))
print(checks(1234666666))
print(checks(12346666666))
print(checks(123466666666))
print(checks(1234666666666))
print(checks(12346666666666))
print(checks(123466666666666))
print(checks(1234666666666666))
print(checks(12346666666666666))
print(checks(123466666666666666))
print(checks(1234666666666666666))
print(checks(12346666666666666666))
print(checks(123466666666666666666))
print(checks(1234666666666666666666))
print(checks(12346666666666666666666))
print(checks(123466666666666666666666))
print(

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())