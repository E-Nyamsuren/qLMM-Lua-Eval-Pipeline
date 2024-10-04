
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
    for i = 2, n do
        local a = i
        local b = 1
        while a > 1 do
            if a % 2 == 0 then
                a = a / 2
                b = b + 1
            else
                a = 3 * a + 1
                b = b + 1
            end
            if b >= k then
                count = count + 1
                break
            end
        end
    end
    return count
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