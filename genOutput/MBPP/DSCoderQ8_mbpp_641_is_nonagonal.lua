-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
    local t = 1 + 7 * n
    local x = (1 + 5 * t) / 2
    return x * x == t * (7 * x - 5) / 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())