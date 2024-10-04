-- Write a function to find the largest sum of a contiguous table in the modified table which is formed by repeating the given table k times.
local function max_sub_array_sum_repeated(a, n, k)
    local all_sum = 0
    local curr_val = 0
    local ans = -math.huge
    for i = 1, k do
        all_sum = 0
        for j = 1, n do
            curr_val = curr_val + a[j]
            all_sum = all_sum + a[j]
            ans = math.max(ans, curr_val)
            if curr_val < 0 then
                curr_val = 0
            end
        end
        table.insert(a, #a + 1, all_sum)
    end
    return ans
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sub_array_sum_repeated
    lu.assertEquals(candidate({10, 20, -30, -1}, 4, 3), 30)
    lu.assertEquals(candidate({-1, 10, 20}, 3, 2), 59)
    lu.assertEquals(candidate({-1, -2, -3}, 3, 3), -1)
end

os.exit(lu.LuaUnit.run())