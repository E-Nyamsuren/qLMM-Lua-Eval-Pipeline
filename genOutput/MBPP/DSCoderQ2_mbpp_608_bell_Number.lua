-- Write a luathon function to find nth bell number.
local function bell_Number(n)
    local memo = {}
    memo[0] = {1}

lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())