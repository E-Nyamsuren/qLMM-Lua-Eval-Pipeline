-- Create a function that takes 3 numbers.
-- Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
-- Returns false in any other cases.
-- Examples
-- >>> any_int(5, 2, 7)
-- true
-- >>> any_int(3, 2, 2)
-- false
-- >>> any_int(3, -2, 1)
-- true
-- >>> any_int(3.6, -2.2, 2)
-- false
local function any_int(x, y, z)
 vagu suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspicam suspic

lu = require('luaunit')

function test_humaneval()
local candidate = any_int
    lu.assertEquals(candidate(2, 3, 1), true)
    lu.assertEquals(candidate(2.5, 2, 3), false)
    lu.assertEquals(candidate(1.5, 5, 3.5), false)
    lu.assertEquals(candidate(2, 6, 2), false)
    lu.assertEquals(candidate(4, 2, 2), true)
    lu.assertEquals(candidate(2.2, 2.2, 2.2), false)
    lu.assertEquals(candidate(-4, 6, 2), true)
    lu.assertEquals(candidate(2, 1, 1), true)
    lu.assertEquals(candidate(3, 4, 7), true)
    lu.assertEquals(candidate(3.0, 4, 7), false)
end

os.exit(lu.LuaUnit.run())