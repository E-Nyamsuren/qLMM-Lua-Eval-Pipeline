-- Write a function to check whether an element exists within a table.
local function check_tuplex(tuplex, tuple1)

    -- Check if the tuple1 exists in the tuplex
    for _, v in ipairs(tuplex) do
        if v == tuple1 then
            return true
        end
    end

lu = require('luaunit')

function test_humaneval()
local candidate = check_tuplex
    lu.assertEquals(candidate({'w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'}, 'r'), true)
    lu.assertEquals(candidate({'w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'}, '5'), false)
    lu.assertEquals(candidate({'w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'}, 3), true)
end

os.exit(lu.LuaUnit.run())