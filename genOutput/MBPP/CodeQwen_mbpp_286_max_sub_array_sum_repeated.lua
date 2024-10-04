-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local max_so_far = -math.huge
    local max_ending_here = 0
    local total_sum = 0
    for i = 1, n * k do
        total_sum = total_sum + a[i % n + 1]
        max_ending_here = max_ending_here + a[i % n + 1]
        if max_ending_here < 0 then
            max_ending_here = 0
        end
        if max_so_far < max_ending_here then
            max_so_far = max_ending_here
        end
    end
    return max_so_far, total_sum
end
return max_sub_array_sum_repeated
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())