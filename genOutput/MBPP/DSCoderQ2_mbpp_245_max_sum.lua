-- Write a function that takes a table and finds the maximum sum of a bitonic subsequence for the given table, where a sequence is bitonic if it is first increasing and then decreasing.
local function max_sum(arr)
    local n = #arr
    local inc = {}
    local dec = {}
    for i = 1, n do
        inc[i] = 0
        dec[i] = 0
    end
    for i = 2, n do
        for j = 1, i - 1 do
            if arr[i] > arr[j] then
                inc[i] = math.max(inc[i], inc[j] + arr[i])
            end
       
            if arr[i] < arr[j] then
                dec[i] = math.max(dec[i], dec[j] + arr[i])
            end
        end
    end
    local max_val = inc[1]
    for i = 1, n do
        max_val = math.max(max_val, inc[i], dec[i])
    end
    return max_val
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum
    lu.assertEquals(candidate({1, 15, 51, 45, 33, 100, 12, 18, 9}), 194)
    lu.assertEquals(candidate({80, 60, 30, 40, 20, 10}), 210)
    lu.assertEquals(candidate({2, 3, 14, 16, 21, 23, 29, 30}), 138)
end

os.exit(lu.LuaUnit.run())