-- Write a function to check if given table contains no duplicates.
local function check_distinct(test_tup)
    local table_tup = {}
    for i, v in ipairs(test_tup) do
        if not table_tup[v] then
            table_tup[v] = true
        else
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_distinct
    lu.assertEquals(candidate({1, 4, 5, 6, 1, 4}), false)
    lu.assertEquals(candidate({1, 4, 5, 6}), true)
    lu.assertEquals(candidate({2, 3, 4, 5, 6}), true)
end

os.exit(lu.LuaUnit.run())