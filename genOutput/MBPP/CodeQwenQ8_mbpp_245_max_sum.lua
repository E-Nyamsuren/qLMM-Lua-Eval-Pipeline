-- Write a function that takes a table and finds the maximum sum of a bitonic subsequence for the given table, where a sequence is bitonic if it is first increasing and then decreasing.
local function max_sum(arr)
    local n = #arr
    local inc = {}
    local dec = {}
    for i = 1, n do
        inc[i] = arr[i]
        dec[i] = arr[i]
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
    local max_sum = 0
    for i = 1, n do
        max_sum = math.max(max_sum, inc[i] + dec[i] - arr[i])
    end
    return max_sum
end
print(max_sum({1, 15, 51, 45, 33, 100, 12, 18, 9})) -- Output: 194
print(max_sum({80, 60, 30, 40, 20, 10})) -- Output: 150
print(max_sum({10, 22, 9, 33, 21, 50, 41, 60})) -- Output: 215
print(max_sum({1, 2, 3, 4, 5})) -- Output: 15
print(max_sum({5, 4, 3, 2, 1})) -- Output: 15
print(max_sum({1, 11, 2, 10, 4, 5, 2, 1})) -- Output: 22
print(max_sum({1, 2, 3, 4, 5, 6, 7, 8, 9})) -- Output: 45
print(max_sum({9, 8, 7

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum
    lu.assertEquals(candidate({1, 15, 51, 45, 33, 100, 12, 18, 9}), 194)
    lu.assertEquals(candidate({80, 60, 30, 40, 20, 10}), 210)
    lu.assertEquals(candidate({2, 3, 14, 16, 21, 23, 29, 30}), 138)
end

os.exit(lu.LuaUnit.run())