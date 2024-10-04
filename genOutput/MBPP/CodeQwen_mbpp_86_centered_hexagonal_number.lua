-- Write a function to find nth centered hexagonal number.
local function centered_hexagonal_number(n)
    return 3 * n * (n - 1) + 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = centered_hexagonal_number
    lu.assertEquals(candidate(10), 271)
    lu.assertEquals(candidate(2), 7)
    lu.assertEquals(candidate(9), 217)
end

os.exit(lu.LuaUnit.run())