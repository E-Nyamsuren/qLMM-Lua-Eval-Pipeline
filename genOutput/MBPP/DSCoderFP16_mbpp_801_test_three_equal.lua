-- Write a luathon function to count the number of equal numbers from three given integers.
local function test_three_equal(x, y, z)
    if x == y and y == z then
        return 3
    else
        return 0
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = test_three_equal
    lu.assertEquals(candidate(1, 1, 1), 3)
    lu.assertEquals(candidate(-1, -2, -3), 0)
    lu.assertEquals(candidate(1, 2, 2), 2)
end

os.exit(lu.LuaUnit.run())