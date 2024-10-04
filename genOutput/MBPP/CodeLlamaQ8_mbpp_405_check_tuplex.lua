-- Write a function to check whether an element exists within a table.
local function check_tuplex(tuplex, tuple1)
    for _, tuple2 in ipairs(tuplex) do
        if tuple1 == tuple2 then
            return true
        end
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_tuplex
    lu.assertEquals(candidate({'w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'}, 'r'), true)
    lu.assertEquals(candidate({'w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'}, '5'), false)
    lu.assertEquals(candidate({'w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'}, 3), true)
end

os.exit(lu.LuaUnit.run())