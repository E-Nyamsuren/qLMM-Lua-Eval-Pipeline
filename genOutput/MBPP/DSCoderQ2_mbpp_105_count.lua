-- Write a luathon function to count true booleans in the given table.
local function count(lst)
    local cnt = 0
    for i, v in ipairs(lst) do
        if v then cnt = cnt + 1 end
    end
    return cnt
end

lu = require('luaunit')

function test_humaneval()
local candidate = count
    lu.assertEquals(candidate({true, false, true}), 2)
    lu.assertEquals(candidate({false, false}), 0)
    lu.assertEquals(candidate({true, true, true}), 3)
end

os.exit(lu.LuaUnit.run())