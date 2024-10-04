
--[[
You are given three digits a, b, c. Two of them are equal, but the third one is different from the other two.
Find the value that occurs exactly once.
Examples:
    extraNumber(0, 0, 1) returns 1
    extraNumber(4, 3, 4) returns 3
]]--
function extraNumber(a, b, c)
    local t = {a, b, c}
    for i = 1, 3 do
        if t[i] ~= t[i + 1] and t[i] ~= t[i - 1] then
            return t[i]
        end
    end
end


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