-- Write a luathon function to find the maximum difference between any two elements in a given table.
local function max_Abs_Diff(arr)
    if #arr < 2 then
        return 0
    end
    local min_val = arr[1]
    local max_val = arr[1]
    for i = 2, #arr do
        if arr[i] < min_val then
            min_val = arr[i]
        elseif arr[i] > max_val then
            max_val = arr[i]
        end
    end
    return max_val - min_val
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Abs_Diff
    lu.assertEquals(candidate({2, 1, 5, 3}), 4)
    lu.assertEquals(candidate({9, 3, 2, 5, 1}), 8)
    lu.assertEquals(candidate({3, 2, 1}), 2)
end

os.exit(lu.LuaUnit.run())