-- Given a string of words, return a table of words split on whitespace, if no whitespaces exists in the text you
-- should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
-- alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
-- Examples
-- >>> split_words('Hello world!')
-- {'Hello', 'world!'}
-- >>> split_words('Hello,world!')
-- {'Hello', 'world!'}
-- >>> split_words('abcdef')
-- 3
local function split_words(txt)
  local t = {}
  local i = 1
  local j = 1
  local k = 1
  local l = 1
  local m = 1
  local n = 1
  local o = 1
  local p = 1
  local q = 1
  local r = 1
  local s = 1
  local t = 1
  local u = 1
  local v = 1
  local w = 1
  local x = 1
  local y = 1
  local z = 1
  local a = 1
  local b = 1
  local c = 1
  local d = 1
  local e = 1
  local f = 1
  local g = 1
  local h = 1
  local i = 1
  local j = 1
  local k = 1
  local l = 1
  local m = 1
  local n = 1
  local o = 1
  local p = 1
  local q = 1
  local r = 1
  local s = 1
  local t = 1
  local u = 1
  local v = 1
  local w = 1
  local x = 1
  local y = 1
  local z = 1
  local a = 1
  local b = 1
  local c = 1
  local d = 1
  local e = 1
  local f = 1
  local g = 1
  local h

lu = require('luaunit')

function test_humaneval()
local candidate = split_words
    lu.assertEquals(candidate('Hello world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello,world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello world,!'), {'Hello', 'world,!'})
    lu.assertEquals(candidate('Hello,Hello,world !'), {'Hello,Hello,world', '!'})
    lu.assertEquals(candidate('abcdef'), 3)
    lu.assertEquals(candidate('aaabb'), 2)
    lu.assertEquals(candidate('aaaBb'), 1)
    lu.assertEquals(candidate(''), 0)
end

os.exit(lu.LuaUnit.run())