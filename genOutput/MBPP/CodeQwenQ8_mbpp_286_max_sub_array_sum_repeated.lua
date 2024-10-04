-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local max_current = a[1]
    local max_global = a[1]
    local sum = a[1]
    for i = 2, n * k do
        sum = math.max(a[i % n + 1], sum + a[i % n + 1])
        max_current = math.max(a[i % n + 1], max_current + a[i % n + 1])
        max_global = math.max(max_global, max_current)
    end
    return max_global
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())