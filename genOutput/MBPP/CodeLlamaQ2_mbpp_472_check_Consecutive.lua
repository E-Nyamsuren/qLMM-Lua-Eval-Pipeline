-- Write a luathon function to check whether the given table contains consecutive numbers or not.
local function check_Consecutive(l)
    local n = #l
    if n == 0 then
        return false
    end
    local i = 1
    while i < n do
        if l[i] + 1 ~= l[i + 1] then
            return false
        end
        i = i + 1
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_Consecutive
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), true)
    lu.assertEquals(candidate({1, 2, 3, 5, 6}), false)
    lu.assertEquals(candidate({1, 2, 1}), false)
end

os.exit(lu.LuaUnit.run())