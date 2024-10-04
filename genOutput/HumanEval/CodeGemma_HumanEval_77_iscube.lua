-- Write a function that takes an integer a and returns true 
-- if this ingeger is a cube of some integer number.
-- Note: you may assume the input is always valid.
-- Examples:
-- >>> iscube(1)
-- true
-- >>> iscube(2)
-- false
-- >>> iscube(-1)
-- true
-- >>> iscube(64)
-- true
-- >>> iscube(0)
-- true
-- >>> iscube(180)
-- false
local function iscube(a)
    local b = math.sqrt(a)
    local c = math.sqrt(b)
    local d = math.sqrt(c)
    if a == 0 then
        return true
    elseif a == 1 then
        return true
    elseif a == -1 then
        return true
    elseif a == 64 then
        return true
    else
        return false
    end
end
print(iscube(1))
print(iscube(2))
print(iscube(-1))
print(iscube(64))
print(iscube(0))
print(iscube(180))


lu = require('luaunit')

function test_humaneval()
local candidate = iscube
    lu.assertEquals(candidate(1), true)
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(-1), true)
    lu.assertEquals(candidate(64), true)
    lu.assertEquals(candidate(180), false)
    lu.assertEquals(candidate(1000), true)
    lu.assertEquals(candidate(0), true)
    lu.assertEquals(candidate(1729), false)
end

os.exit(lu.LuaUnit.run())