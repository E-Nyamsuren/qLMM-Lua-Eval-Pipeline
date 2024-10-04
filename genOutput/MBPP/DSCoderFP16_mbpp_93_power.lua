-- Write a function to calculate the value of 'a' to the power 'b'.
local function power(a, b)

    -- Initialize the result
    local result = 1

lu = require('luaunit')

function test_humaneval()
local candidate = power
    lu.assertEquals(candidate(3, 4), 81)
    lu.assertEquals(candidate(2, 3), 8)
    lu.assertEquals(candidate(5, 5), 3125)
end

os.exit(lu.LuaUnit.run())