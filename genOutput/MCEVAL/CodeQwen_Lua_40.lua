
--[[
Given two positive integers n and k, find the number of positive integers x, 
where 1 <= x <= n, that can be expressed as x = a^b with a and b being positive 
integers and b >= k. Different legal representations of the same number are 
counted only once.

    >>> countPowerNumbers(99, 1)
    99
]]--
function countPowerNumbers(n, k)
    local count = 0
    for a = 2, n do
        local b = k
        while a^b <= n do
            if a^b == n then
                count = count + 1
            end
            b = b + 1
        end
    end
    return count + 1 -- Adding 1 for the case when n itself is a power of some number
end

lu = require('luaunit')

function testCountPowerNumbers()
    local candidate = countPowerNumbers
    lu.assertTrue(candidate(99, 1) == 99)
    lu.assertTrue(candidate(99, 3) == 7)
    lu.assertTrue(candidate(99, 2) == 12)
    lu.assertTrue(candidate(10, 1) == 10)
    lu.assertTrue(candidate(10, 2) == 4)
    lu.assertTrue(candidate(500, 1) == 500)
    lu.assertTrue(candidate(500, 2) == 30)
    lu.assertTrue(candidate(500, 3) == 13)
    lu.assertTrue(candidate(1000, 1) == 1000)
    lu.assertTrue(candidate(1000, 2) == 41)
    lu.assertTrue(candidate(1000, 3) == 17)
    lu.assertTrue(candidate(1000, 93) == 1)
    lu.assertTrue(candidate(50, 2) == 10)
    lu.assertTrue(candidate(50, 3) == 5)
    lu.assertTrue(candidate(2, 3) == 1)
end

os.exit(lu.LuaUnit.run())