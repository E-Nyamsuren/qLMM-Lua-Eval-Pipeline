-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
    local num = number
    local result = 0
    local remainder = 0
    local n = 0

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())