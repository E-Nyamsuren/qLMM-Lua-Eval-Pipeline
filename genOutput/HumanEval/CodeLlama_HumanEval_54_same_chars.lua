-- Check if two words have the same characters.
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc')
-- true
-- >>> same_chars('abcd', 'dddddddabc')
-- true
-- >>> same_chars('dddddddabc', 'abcd')
-- true
-- >>> same_chars('eabcd', 'dddddddabc')
-- false
-- >>> same_chars('abcd', 'dddddddabce')
-- false
-- >>> same_chars('eabcdzzzz', 'dddzzzzzzzddddabc')
-- false
local function same_chars(s0, s1)
    local c0 = {}
    local c1 = {}
    for i = 1, #s0 do
        c0[s0:sub(i, i)] = true
    end
    for i = 1, #s1 do
        c1[s1:sub(i, i)] = true
    end
    for k, _ in pairs(c0) do
        if not c1[k] then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = same_chars
    lu.assertEquals(candidate('eabcdzzzz', 'dddzzzzzzzddeddabc'), true)
    lu.assertEquals(candidate('abcd', 'dddddddabc'), true)
    lu.assertEquals(candidate('dddddddabc', 'abcd'), true)
    lu.assertEquals(candidate('eabcd', 'dddddddabc'), false)
    lu.assertEquals(candidate('abcd', 'dddddddabcf'), false)
    lu.assertEquals(candidate('eabcdzzzz', 'dddzzzzzzzddddabc'), false)
    lu.assertEquals(candidate('aabb', 'aaccc'), false)
end

os.exit(lu.LuaUnit.run())