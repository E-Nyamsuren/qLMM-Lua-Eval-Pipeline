-- Write a luathon function to find whether a number is divisible by 11.
local function is_Diff(n)
    local sum = 0
    while n > 0 do
        sum = sum + n % 11
        n = n // 11
    end
    return sum % 11 == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Diff
    lu.assertEquals(candidate(12345), false)
    lu.assertEquals(candidate(1212112), true)
    lu.assertEquals(candidate(1212), false)
end

os.exit(lu.LuaUnit.run())