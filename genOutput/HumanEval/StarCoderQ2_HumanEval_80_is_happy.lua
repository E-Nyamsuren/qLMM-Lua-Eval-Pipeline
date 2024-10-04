-- You are given a string s.
-- Your task is to check if the string is haplua or not.
-- A string is haplua if its length is at least 3 and every 3 consecutive letters are distinct
-- For example:
-- >>> is_happy('a')
-- false
-- >>> is_happy('aa')
-- false
-- >>> is_happy('abcd')
-- true
-- >>> is_happy('aabb')
-- false
-- >>> is_happy('adb')
-- true
-- >>> is_happy('xyy')
-- false
local function is_happy(s)
end


lu = require('luaunit')

function test_humaneval()
local candidate = is_happy
    lu.assertEquals(candidate('a'), false)
    lu.assertEquals(candidate('aa'), false)
    lu.assertEquals(candidate('abcd'), true)
    lu.assertEquals(candidate('aabb'), false)
    lu.assertEquals(candidate('adb'), true)
    lu.assertEquals(candidate('xyy'), false)
    lu.assertEquals(candidate('iopaxpoi'), true)
    lu.assertEquals(candidate('iopaxioi'), false)
end

os.exit(lu.LuaUnit.run())