-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
    local a = 2 * n - 1
    local b = (n * (7 * n - 5)) / 2
    return a == b
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())