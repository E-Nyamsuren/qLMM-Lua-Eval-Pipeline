-- Write a function to check if the given table has any none value or not.
local function check_none(test_tup)
    for _, val in pairs(test_tup) do
        if val == nil then
            return true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_none
    lu.assertEquals(candidate({10, 4, 5, 6, None}), true)
    lu.assertEquals(candidate({7, 8, 9, 11, 14}), false)
    lu.assertEquals(candidate({1, 2, 3, 4, None}), true)
end

os.exit(lu.LuaUnit.run())