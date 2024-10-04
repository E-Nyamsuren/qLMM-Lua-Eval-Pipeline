-- Write a luathon function to find the number of divisors of a given integer.
local function divisor(n)

    -- Initialize the count of divisors to 2 (for the number itself and 1).
    local count = 2

lu = require('luaunit')

function test_humaneval()
local candidate = divisor
    lu.assertEquals(candidate(15), 4)
    lu.assertEquals(candidate(12), 6)
    lu.assertEquals(candidate(9), 3)
end

os.exit(lu.LuaUnit.run())