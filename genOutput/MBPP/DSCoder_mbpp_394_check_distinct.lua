-- Write a function to check if given table contains no duplicates.
local function check_distinct(test_tup)
    local test_tab = {}
    for _, v in ipairs(test_tup) do
        if test_tab[v] then
            return false
        else
            test_tab[v] = true
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