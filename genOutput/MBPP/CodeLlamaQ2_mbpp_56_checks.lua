-- Write a luathon function to check if a given number is one less than twice its reverse.
local function checks(n)
    local rev = 0
    while n > 0 do
        local d = n % 10
        rev = rev * 10 + d
        n = math.floor(n / 10)
    end
    return rev == n + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = checks
    lu.assertEquals(candidate(70), false)
    lu.assertEquals(candidate(23), false)
    lu.assertEquals(candidate(73), true)
end

os.exit(lu.LuaUnit.run())