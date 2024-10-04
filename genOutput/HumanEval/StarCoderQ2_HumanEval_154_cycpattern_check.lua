-- You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word
-- >>> cycpattern_check('abcd', 'abd')
-- false
-- >>> cycpattern_check('hello', 'ell')
-- true
-- >>> cycpattern_check('whassup', 'psus')
-- false
-- >>> cycpattern_check('abab', 'baa')
-- true
-- >>> cycpattern_check('efef', 'eeff')
-- false
-- >>> cycpattern_check('himenss', 'simen')
-- true
local function cycpattern_check(a, b)


lu = require('luaunit')

function test_humaneval()
local candidate = cycpattern_check
    lu.assertEquals(candidate('xyzw', 'xyw'), false)
    lu.assertEquals(candidate('yello', 'ell'), true)
    lu.assertEquals(candidate('whattup', 'ptut'), false)
    lu.assertEquals(candidate('efef', 'fee'), true)
    lu.assertEquals(candidate('abab', 'aabb'), false)
    lu.assertEquals(candidate('winemtt', 'tinem'), true)
end

os.exit(lu.LuaUnit.run())