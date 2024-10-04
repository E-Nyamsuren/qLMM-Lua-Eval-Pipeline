-- Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
local function max_sum_increasing_subseq(a, n, index, k)
    local max_sum = 0
    local sum = 0
    local max_end = 0
    local max_start = 0
    local start = index + 1
    local end_ = n
    local i = start
    while i <= end_ do
        if a[i] > a[index] then
            sum = sum + a[i]
            if i == k then
                max_sum = max_sum + sum
                max_start = start
                max_end = i
            end
        else
            if sum > max_sum then
                max_sum = sum
                max_start = start
                max_end = i - 1
            end
            sum = 0
            start = i + 1
        end
        i = i + 1
    end
    if sum > max_sum then
        max_sum = sum
        max_start = start
        max_end = n
    end
    return max_sum, max_start, max_end
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum_increasing_subseq
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 4, 6), 11)
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 2, 5), 7)
    lu.assertEquals(candidate({11, 15, 19, 21, 26, 28, 31}, 7, 2, 4), 71)
end

os.exit(lu.LuaUnit.run())