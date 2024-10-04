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
    local s0_chars = {}
    local s1_chars = {}
    for i = 1, #s0 do
        s0_chars[s0:sub(i, i)] = true
    end
    for i = 1, #s1 do
        s1_chars[s1:sub(i, i)] = true
    end
    for k in pairs(s0_chars) do
        if not s1_chars[k] then
            return false
        end
    end
    for k in pairs(s1_chars) do
        if not s0_chars[k] then
            return false
        end
    end
    return true
end
print(same_chars('eabcdzzzz', 'dddzzzzzzzddeddabc'))
print(same_chars('abcd', 'dddddddabc'))
print(same_chars('dddddddabc', 'abcd'))
print(same_chars('eabcd', 'dddddddabc'))
print(same_chars('abcd', 'dddddddabce'))
print(same_chars('eabcdzzzz', 'dddzzzzzzzddddabc'))

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