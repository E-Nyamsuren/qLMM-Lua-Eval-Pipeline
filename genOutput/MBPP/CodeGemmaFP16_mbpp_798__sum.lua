-- Write a luathon function to find the sum of a table.
local function _sum(arr)
    local sum = 0
    for _, value in ipairs(arr) do
        sum = sum + value
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = _sum
    lu.assertEquals(candidate({1, 2, 3}), 6)
    lu.assertEquals(candidate({15, 12, 13, 10}), 50)
    lu.assertEquals(candidate({0, 1, 2}), 3)
end

os.exit(lu.LuaUnit.run())