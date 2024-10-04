-- Write a luathon function to find quotient of two numbers (rounded down to the nearest integer).
local function find(n, m)
    return math.floor(n/m)
end

lu = require('luaunit')

function test_humaneval()
local candidate = find
    lu.assertEquals(candidate(10, 3), 3)
    lu.assertEquals(candidate(4, 2), 2)
    lu.assertEquals(candidate(20, 5), 4)
end

os.exit(lu.LuaUnit.run())