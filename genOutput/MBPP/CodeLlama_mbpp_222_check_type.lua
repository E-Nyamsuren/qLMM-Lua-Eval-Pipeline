-- Write a function to check if all the elements in table have same data type or not.
local function check_type(test_tuple)
    local test_table = {}
    for i, v in ipairs(test_tuple) do
        table.insert(test_table, type(v))
    end
    local test_table_set = {}
    for i, v in ipairs(test_table) do
        if not test_table_set[v] then
            test_table_set[v] = true
        else
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_type
    lu.assertEquals(candidate({5, 6, 7, 3, 5, 6}), true)
    lu.assertEquals(candidate({1, 2, '4'}), false)
    lu.assertEquals(candidate({3, 2, 1, 4, 5}), true)
end

os.exit(lu.LuaUnit.run())