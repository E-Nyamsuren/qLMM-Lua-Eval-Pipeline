-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local max_sum = 0
    local sum = 0
    for i = 1, n do
        sum = sum + a[i]
        if sum > max_sum then
            max_sum = sum
        end
    end
    for i = 1, k - 1 do
        local new_max_sum = 0
        local new_sum = 0
        for j = 1, n do
            new_sum = new_sum + a[j]
            if new_sum > new_max_sum then
                new_max_sum = new_sum
            end
        end
        max_sum = math.max(max_sum, new_max_sum)
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