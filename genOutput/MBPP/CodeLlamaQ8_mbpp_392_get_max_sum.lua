-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
    local f = {}
    f[1] = 1
    for i = 2, n do
        local max_sum = 0
        for j = 1, i do
            if i % j == 0 then
                local sum = f[j] + f[i / j]
                if sum > max_sum then
                    max_sum = sum
                end
            end
        end
        f[i] = max_sum
    end
    return f[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())