-- Write a function to count the number of occurrences of a number in a given table.
local function frequency(a, x)
    local count = 0
    for i = 1, #a do
        if a[i] == x then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = frequency
    lu.assertEquals(candidate({1, 2, 3}, 4), 0)
    lu.assertEquals(candidate({1, 2, 2, 3, 3, 3, 4}, 3), 3)
    lu.assertEquals(candidate({0, 1, 2, 3, 1, 2}, 1), 2)
end

os.exit(lu.LuaUnit.run())