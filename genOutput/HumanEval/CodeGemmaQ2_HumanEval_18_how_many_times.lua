-- Find how many times a given substring can be found in the original string. Count overlaping cases.
-- >>> how_many_times('', 'a')
-- 0
-- >>> how_many_times('aaa', 'a')
-- 3
-- >>> how_many_times('aaaa', 'aa')
-- 3
local function how_many_times(string, substring)
 vagu suspicum deleter suspicum
 vagu suspicum deleter suspicum vagu suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum deleter suspicum

lu = require('luaunit')

function test_humaneval()
local candidate = how_many_times
    lu.assertEquals(candidate('', 'x'), 0)
    lu.assertEquals(candidate('xyxyxyx', 'x'), 4)
    lu.assertEquals(candidate('cacacacac', 'cac'), 4)
    lu.assertEquals(candidate('john doe', 'john'), 1)
end

os.exit(lu.LuaUnit.run())