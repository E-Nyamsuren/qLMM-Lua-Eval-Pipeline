-- Write a luathon function to find the last position of an element in a sorted table.
local function last(arr, x)
    local i = #arr
    while i > 0 and arr[i] ~= x do
        i = i - 1
    end
    return i
end

lu = require('luaunit')

function test_humaneval()
local candidate = last
    lu.assertEquals(candidate({1, 2, 3}, 1), 0)
    lu.assertEquals(candidate({1, 1, 1, 2, 3, 4}, 1), 2)
    lu.assertEquals(candidate({2, 3, 2, 3, 6, 8, 9}, 3), 3)
end

os.exit(lu.LuaUnit.run())