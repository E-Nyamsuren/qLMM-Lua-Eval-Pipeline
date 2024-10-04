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
    if #s < 3 then
        return false
    end
    for i = 1, #s - 2 do
        if s[i] == s[i + 1] or s[i] == s[i + 2] or s[i + 1] == s[i + 2] then
            return false
        end
    end
    return true
end
print(is_happy('xyz')) -- true
print(is_happy('xyx')) -- false
print(is_happy('xyzx')) -- true
print(is_happy('xyzy')) -- false
print(is_happy('xyzxyz')) -- true
print(is_happy('xyzxyzy')) -- false
print(is_happy('xyzxyzxy')) -- true
print(is_happy('xyzxyzxyz')) -- false
print(is_happy('xyzxyzxyzy')) -- true
print(is_happy('xyzxyzxyzxy')) -- false
print(is_happy('xyzxyzxyzxyz')) -- true
print(is_happy('xyzxyzxyzxyzy')) -- false
print(is_happy('xyzxyzxyzxyzxy')) -- true
print(is_happy('xyzxyzxyzxyzxyz')) -- false
print(is_happy('xyzxyzxyzxyzxyzy')) -- true
print(is_happy('xyzxyzxyzxyzxyzxy')) -- false
print

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