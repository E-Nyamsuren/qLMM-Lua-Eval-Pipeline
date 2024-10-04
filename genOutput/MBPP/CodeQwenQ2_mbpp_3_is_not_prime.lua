-- Write a luathon function to identify non-prime numbers.
local function is_not_prime(n)
    if n <= 1 then
        return false
    end
    if n <= 3 then
        return false
    end
    if n % 2 == 0 or n % 3 == 0 then
        return false
    end
    local i = 5
    while i * i <= n do
        if n % i == 0 or n % (i + 2) == 0 then
            return false
        end
        i = i + 6
    end
    return true
end
return is_not_prime

lu = require('luaunit')

function test_humaneval()
local candidate = is_not_prime
    lu.assertEquals(candidate(2), false)
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(35), true)
    lu.assertEquals(candidate(37), false)
end

os.exit(lu.LuaUnit.run())