-- Write a luathon function to find the maximum difference between any two elements in a given table.
local function max_Abs_Diff(arr)
    local max_diff = 0
    for i = 1, #arr do
        for j = i + 1, #arr do
            local diff = math.abs(arr[i] - arr[j])
            if diff > max_diff then
                max_diff = diff
            end
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