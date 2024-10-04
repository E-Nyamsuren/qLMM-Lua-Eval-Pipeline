-- Write a luathon function to find the last position of an element in a sorted table.
local function last(arr, x)
    for i = #arr, 1, -1 do
        if arr[i] == x then
            return i
        end
    end
    return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = last
    lu.assertEquals(candidate({1, 2, 3}, 1), 0)
    lu.assertEquals(candidate({1, 1, 1, 2, 3, 4}, 1), 2)
    lu.assertEquals(candidate({2, 3, 2, 3, 6, 8, 9}, 3), 3)
end

os.exit(lu.LuaUnit.run())