-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
    local cache = {}
    cache[0] = 0
    cache[1] = 1
    for i = 2, n do
        cache[i] = math.max(i, cache[math.floor(i / 2)] + cache[math.floor(i / 3)] + cache[math.floor(i / 4)] + cache[math.floor(i / 5)])
    end
    return cache[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())