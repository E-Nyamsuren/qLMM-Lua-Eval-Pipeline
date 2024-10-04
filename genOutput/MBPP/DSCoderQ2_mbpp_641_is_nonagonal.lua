-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
    return n * (7 * n - 7) / 2 + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())