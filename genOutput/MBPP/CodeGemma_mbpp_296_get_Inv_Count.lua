-- Write a luathon function to count inversions in a table.
local function get_Inv_Count(arr)
    local inv_count = 0
    for i = 1, #arr do
        for j = i + 1, #arr do
            if arr[i] > arr[j] then
                inv_count = inv_count + 1
            end
        end
    end
    return inv_count
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_Inv_Count
    lu.assertEquals(candidate({1, 20, 6, 4, 5}), 5)
    lu.assertEquals(candidate({1, 2, 1}), 1)
    lu.assertEquals(candidate({1, 2, 5, 6, 1}), 3)
end

os.exit(lu.LuaUnit.run())