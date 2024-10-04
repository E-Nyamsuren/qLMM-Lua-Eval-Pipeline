-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)

    -- Initialize sum
    local sum = 0

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())