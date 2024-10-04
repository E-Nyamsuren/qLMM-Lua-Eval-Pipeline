-- Write a function to find the maximum value in a given heterogeneous table.
local function max_val(listval)

    -- Check if the list is empty
    if #listval == 0 then
        return nil
    end

lu = require('luaunit')

function test_humaneval()
local candidate = max_val
    lu.assertEquals(candidate({'Python', 3, 2, 4, 5, 'version'}), 5)
    lu.assertEquals(candidate({'Python', 15, 20, 25}), 25)
    lu.assertEquals(candidate({'Python', 30, 20, 40, 50, 'version'}), 50)
end

os.exit(lu.LuaUnit.run())