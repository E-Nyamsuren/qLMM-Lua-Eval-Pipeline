-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local sum = 0
    local max_sum = -math.huge
    for i = 1, n do
        sum = sum + a[i]
    end
    for i = 1, k do
        max_sum = math.max(max_sum, sum)
        sum = sum - a[i] + a[i + (k - 1) * n]
    end
    return max_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())