-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
    local rev = 0
    local temp = n
    while temp > 0 do
        digit = temp % 10
        rev = (rev * 10) + digit
        temp = temp // 10
    end
    if n == (rev * 2) - 1 then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())