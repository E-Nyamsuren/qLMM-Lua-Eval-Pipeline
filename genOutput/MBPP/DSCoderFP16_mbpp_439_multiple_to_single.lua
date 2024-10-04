-- Write a function to join a table of multiple integers into a single integer.
local function multiple_to_single(L)
    local sum = 0
    for _, v in ipairs(L) do
        sum = sum + v
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = multiple_to_single
    lu.assertEquals(candidate({11, 33, 50}), 113350)
    lu.assertEquals(candidate({-1, 2, 3, 4, 5, 6}), -123456)
    lu.assertEquals(candidate({10, 15, 20, 25}), 10152025)
end

os.exit(lu.LuaUnit.run())