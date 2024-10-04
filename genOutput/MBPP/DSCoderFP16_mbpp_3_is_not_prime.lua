-- Write a luathon function to identify non-prime numbers.
local function is_not_prime(n)
    if n <= 1 then return true end
    if n % 2 == 0 and n > 2 then return false end
    local sqrt_n = math.sqrt(n)
    for i = 3, sqrt_n, 2 do
        if n % i == 0 then return false end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_not_prime
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(35), true)
    lu.assertEquals(candidate(37), false)
end

os.exit(lu.LuaUnit.run())