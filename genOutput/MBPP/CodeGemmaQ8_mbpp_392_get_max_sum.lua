-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
    if n == 1 then
        return 1
    end
    local max_sum = 0
    for i = 2, 5 do
        if n % i == 0 then
            local sub_sum = get_max_sum(n / i)
            if sub_sum > max_sum then
                max_sum = sub_sum
            end
        end
    end
    return max_sum + n
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())