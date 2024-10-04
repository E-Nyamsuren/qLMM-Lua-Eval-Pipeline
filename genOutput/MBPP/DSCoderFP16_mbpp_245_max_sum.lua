-- Write a function that takes a table and finds the maximum sum of a bitonic subsequence for the given table, where a sequence is bitonic if it is first increasing and then decreasing.
local function max_sum(arr)
    local n = #arr
    if n < 3 then
        return 0
    end
    local max_sum = arr[1] + arr[2]
    local sum = arr[1] + arr[2]
    for i = 3, n do
        local temp = arr[i] + sum
        sum = temp
        if sum > max_sum then
            max_sum = sum
        end
    end
    return max_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum
    lu.assertEquals(candidate({1, 15, 51, 45, 33, 100, 12, 18, 9}), 194)
    lu.assertEquals(candidate({80, 60, 30, 40, 20, 10}), 210)
    lu.assertEquals(candidate({2, 3, 14, 16, 21, 23, 29, 30}), 138)
end

os.exit(lu.LuaUnit.run())