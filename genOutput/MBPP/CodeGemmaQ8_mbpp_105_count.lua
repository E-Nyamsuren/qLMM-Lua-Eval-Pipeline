-- Write a luathon function to count true booleans in the given table.
local function count(lst)
    local count = 0
    for i = 1, #lst do
        if lst[i] == true then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count
    lu.assertEquals(candidate({true, false, true}), 2)
    lu.assertEquals(candidate({false, false}), 0)
    lu.assertEquals(candidate({true, true, true}), 3)
end

os.exit(lu.LuaUnit.run())