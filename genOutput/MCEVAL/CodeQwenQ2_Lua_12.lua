
--[[
You are given three digits a, b, c. Two of them are equal, but the third one is different from the other two.
Find the value that occurs exactly once.
Examples:
    extraNumber(0, 0, 1) returns 1
    extraNumber(4, 3, 4) returns 3
]]--
function extraNumber(a, b, c)
    if a == b then
        return c
    elseif a == c then
        return b
    else
        return a
    end
end
print(extraNumber(0, 0, 1)) -- 1
print(extraNumber(4, 3, 4)) -- 3
print(extraNumber(1, 2, 3)) -- 3
print(extraNumber(2, 2, 3)) -- 3
print(extraNumber(2, 3, 2)) -- 3
print(extraNumber(3, 2, 2)) -- 3
print(extraNumber(3, 3, 2)) -- 2
print(extraNumber(3, 3, 3)) -- 2
print(extraNumber(3, 3, 4)) -- 4
print(extraNumber(3, 4, 3)) -- 4
print(extraNumber(4, 3, 3)) -- 3
print(extraNumber(4, 4, 3)) -- 3
print(extraNumber(4, 4, 4)) -- 4
print(extraNumber(4, 4, 5)) -- 5
print(extraNumber(5, 4, 4)) -- 4
print(extraNumber(5, 5, 4)) -- 4
print(extraNumber(5, 5, 5)) -- 5
print(extraNumber(5, 5, 6)) -- 6
print(extraNumber(6, 5, 5)) -- 5
print(extraNumber(6, 6, 5)) -- 5
print(extraNumber(6, 6, 6)) -- 6
print(extraNumber(6, 6, 7)) -- 7
print(extraNumber(7, 6,

function extraNumber(a, b, c)if a == b then
        return c
    elseif a == c then
        return b
    else
        return a
    end
end

lu = require('luaunit')

function testExtraNumber()
    local candidate = extraNumber
    lu.assertTrue(candidate(2, 7, 2) == 7)
    lu.assertTrue(candidate(3, 2, 2) == 3)
    lu.assertTrue(candidate(5, 5, 1) == 1)
    lu.assertTrue(candidate(500000000, 3, 500000000) == 3)
    lu.assertTrue(candidate(500000000, 500000000, 3) == 3)
end

os.exit(lu.LuaUnit.run())