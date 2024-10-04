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
    local len_a = #a
    local len_b = #b
    if len_a < len_b then
        return false
    end
    for i = 1, len_b do
        local sub_b = b:sub(i, i + len_b - 1)
        if a:find(sub_b) then
            return true
        end
    end
    return false
end
print(cycpattern_check('abcd', 'abd')) -- false
print(cycpattern_check('hello', 'ell')) -- true
print(cycpattern_check('whassup', 'psus')) -- false
print(cycpattern_check('abab', 'baa')) -- true
print(cycpattern_check('efef', 'eeff')) -- false
print(cycpattern_check('himenss', 'simen')) -- true

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