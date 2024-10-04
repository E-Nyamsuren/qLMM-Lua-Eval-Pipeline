-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local max_sum = -math.huge
    local current_sum = 0
    for i = 1, n * k do
        current_sum = current_sum + a[i % n + 1]
        if current_sum > max_sum then
            max_sum = current_sum
        end
        if current_sum < 0 then
            current_sum = 0
        end
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