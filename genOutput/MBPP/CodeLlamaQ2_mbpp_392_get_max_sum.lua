-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
    if n == 1 then
        return 1
    end
    local max_sum = 0
    for i = 1, n do
        local f_n_2 = get_max_sum(i)
        local f_n_3 = get_max_sum(n - i)
        local f_n_4 = get_max_sum(n - i * 2)
        local f_n_5 = get_max_sum(n - i * 3)
        local sum = f_n_2 + f_n_3 + f_n_4 + f_n_5
        if sum > max_sum then
            max_sum = sum
        end
    end
    return max_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())