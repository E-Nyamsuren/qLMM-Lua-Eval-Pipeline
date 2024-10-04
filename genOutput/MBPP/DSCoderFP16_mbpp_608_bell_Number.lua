-- Write a luathon function to find nth bell number.
local function bell_Number(n)

    -- Create a table to store the Bell numbers
    local Bell = {}

lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())