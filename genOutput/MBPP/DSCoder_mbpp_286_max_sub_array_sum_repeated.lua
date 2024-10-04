-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local all_neg = true
    local max_neg = -math.huge
    local sum = 0
    local max_sum = 0
    local total_sum = 0
    for i = 1, n*k do
        sum = sum + a[i%n + 1]
        total_sum = total_sum + a[i%n + 1]
        if sum < 0 then
            sum = 0
        end
        if sum > max_sum then
            max_sum = sum
        end
        if a[i%n + 1] < 0 and a[i%n + 1] > max_neg then
            max_neg = a[i%n + 1]
            all_neg = false
        end
    end
    if all_neg then
        return max_neg
    else
        return math.max(max_sum, total_sum - min_sub_array_sum_repeated(a, n, k))
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())