-- Write a function to find the minimum value in a given heterogeneous table.
local function min_val(listval)
    local minval = nil
    for _, val in ipairs(listval) do
        if minval == nil or val < minval then
            minval = val
        end
    end
    return minval
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_val
    lu.assertEquals(candidate({'Python', 3, 2, 4, 5, 'version'}), 2)
    lu.assertEquals(candidate({'Python', 15, 20, 25}), 15)
    lu.assertEquals(candidate({'Python', 30, 20, 40, 50, 'version'}), 20)
end

os.exit(lu.LuaUnit.run())