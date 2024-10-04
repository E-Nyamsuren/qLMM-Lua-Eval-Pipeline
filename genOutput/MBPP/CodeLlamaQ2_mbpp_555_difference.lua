-- Write a luathon function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
local function difference(n)
    return n * (n + 1) * (2 * n + 1) / 6
end

lu = require('luaunit')

function test_humaneval()
local candidate = difference
    lu.assertEquals(candidate(3), 30)
    lu.assertEquals(candidate(5), 210)
    lu.assertEquals(candidate(2), 6)
end

os.exit(lu.LuaUnit.run())