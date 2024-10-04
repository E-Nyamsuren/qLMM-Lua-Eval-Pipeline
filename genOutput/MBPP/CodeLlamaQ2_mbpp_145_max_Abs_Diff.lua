-- Write a luathon function to find the maximum difference between any two elements in a given table.
local function max_Abs_Diff(arr)
    local max = 0
    for i = 1, #arr do
        for j = i + 1, #arr do
            if math.abs(arr[i] - arr[j]) > max then
                max = math.abs(arr[i] - arr[j])
            end
        end
    end
    return max
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_Abs_Diff
    lu.assertEquals(candidate({2, 1, 5, 3}), 4)
    lu.assertEquals(candidate({9, 3, 2, 5, 1}), 8)
    lu.assertEquals(candidate({3, 2, 1}), 2)
end

os.exit(lu.LuaUnit.run())