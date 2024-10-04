-- Write a luathon function to find the maximum difference between any two elements in a given table.
local function max_Abs_Diff(arr)
    local max_diff = 0
    local min_element = arr[1]
    local max_element = arr[1]
    for i = 2, #arr do
        if arr[i] < min_element then
            min_element = arr[i]
        elseif arr[i] > max_element then
            max_element = arr[i]
        end
        local diff = max_element - min_element
        if diff > max_diff then
            max_diff = diff
        end
    end
    return max_diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Abs_Diff
    lu.assertEquals(candidate({2, 1, 5, 3}), 4)
    lu.assertEquals(candidate({9, 3, 2, 5, 1}), 8)
    lu.assertEquals(candidate({3, 2, 1}), 2)
end

os.exit(lu.LuaUnit.run())