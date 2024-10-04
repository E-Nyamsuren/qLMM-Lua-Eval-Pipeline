-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
    if n == 1 then
        return 1
    else
        local sum = 0
        if n % 2 == 0 then
            sum = sum + get_max_sum(n / 2)
        end
        if n % 3 == 0 then
            sum = sum + get_max_sum(n / 3)
        end
        if n % 4 == 0 then
            sum = sum + get_max_sum(n / 4)
        end
        if n % 5 == 0 then
            sum = sum + get_max_sum(n / 5)
        end
        return sum + n
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())