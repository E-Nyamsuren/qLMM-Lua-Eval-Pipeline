-- Write a function that takes an integer a and returns true 
-- if this ingeger is a cube of some integer number.
-- Note: you may assume the input is always valid.
-- Examples:
-- >>> iscube(1)
-- true
-- >>> iscube(2)
-- false
-- >>> iscube(-1)
-- true
-- >>> iscube(64)
-- true
-- >>> iscube(0)
-- true
-- >>> iscube(180)
-- false
local function iscube(a)
    local b = math.sqrt(a)
    return math.floor(b) == b and b^3 == a
end

lu = require('luaunit')

function test_humaneval()
local candidate = iscube
    lu.assertEquals(candidate(1), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(-1), true)
    lu.assertEquals(candidate(64), true)
    lu.assertEquals(candidate(180), false)
    lu.assertEquals(candidate(1000), true)
    lu.assertEquals(candidate(0), true)
    lu.assertEquals(candidate(1729), false)
end

os.exit(lu.LuaUnit.run())