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
    local b_len = string.len(b)
    local a_len = string.len(a)
    local b_rot = b .. b
    local b_rot_len = string.len(b_rot)
    local b_rot_start = string.find(b_rot, b)
    local b_rot_end = b_rot_start + b_len - 1
    local b_rot_sub = string.sub(b_rot, b_rot_start, b_rot_end)
    local b_rot_sub_len = string.len(b_rot_sub)
    local b_rot_sub_start = string.find(a, b_rot_sub)
    local b_rot_sub_end = b_rot_sub_start + b_rot_sub_len - 1
    local b_rot_sub_sub = string.sub(a, b_rot_sub_start, b_rot_sub_end)
    if b_rot_sub_sub == b_rot_sub then
        return true
    else
        return false
    end
end
print(cycpattern_check('abcd', 'abd'))
print(cycpattern_check('hello', 'ell'))
print(cycpattern_check('whassup', 'psus'))
print(cycpattern_check('abab', 'baa'))
print(cycpattern_check('efef', 'eeff'))
print(cycpattern_check('himenss', 'simen'))
</code>

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