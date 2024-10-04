
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
    local i = 2
    while i*i <= n do
        local j = i
        while j <= n do
            if j*j > n then
                break
            end
            count = count + 1
            local temp = j*j
            while temp <= n and temp > 0 do
                if temp*j > n then
                    break
                end
                temp = temp * j
                if temp <= n then
                    count = count + 1
                end
            end
            j = j + 1
        end
        i = i + 1
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