-- Write function to find the sum of all items in the given table.
local function return_sum(dict)
    local sum = 0
    for _, value in pairs(dict) do
        sum = sum + value
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = return_sum
    lu.assertEquals(candidate({['a'] = 100, ['b'] = 200, ['c'] = 300}), 600)
    lu.assertEquals(candidate({['a'] = 25, ['b'] = 18, ['c'] = 45}), 88)
    lu.assertEquals(candidate({['a'] = 36, ['b'] = 39, ['c'] = 49}), 124)
end

os.exit(lu.LuaUnit.run())