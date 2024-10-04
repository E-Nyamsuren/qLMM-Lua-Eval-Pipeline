-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
    local n = x
    local d = 0
    while n > 0 do
        d = d + 1
        n = n // 10
    end
    local n = x
    local p = 0
    while n > 0 do
        p = p + 10 ^ (d - 1) * (n % 10)
        n = n // 10
    end
    return p == x
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())