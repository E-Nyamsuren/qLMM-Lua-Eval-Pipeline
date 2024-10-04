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
  local t0 = {}
  local t1 = {}
  for c in s0:gmatch(".") do
    t0[c] = (t0[c] or 0) + 1
  end
  for c in s1:gmatch(".") do
    t1[c] = (t1[c] or 0) + 1
  end
  for k, v in pairs(t0) do
    if t1[k] ~= v then
      return false
    end
  end
  for k, v in pairs(t1) do
    if t0[k] ~= v then
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