
--[[ 
Given an integer n, write a function to compute the sum of all numbers from 1 to n that are multiples 
of either 3 or 5. If a number is a multiple of both 3 and 5, it should only be counted once.
For example:
    >>> sumOfMultiples(10)
    33 -- (3 + 5 + 6 + 9 + 10)
]]
function sumOfMultiples(n)
    local sum = 0
    for i = 1, n do
        if i % 3 == 0 or i % 5 == 0 then
            sum = sum + i
        end
    end
    return sum
end
print(sumOfMultiples(10)) -- 33

lu = require('luaunit')

function testSumOfMultiples()
    local candidate = sumOfMultiples
    lu.assertTrue(candidate(10) == 33)
    lu.assertTrue(candidate(15) == 60)
    lu.assertTrue(candidate(20) == 98)
    lu.assertTrue(candidate(5) == 8)
    lu.assertTrue(candidate(3) == 3)
    lu.assertTrue(candidate(6) == 14)
    lu.assertTrue(candidate(9) == 23)
    lu.assertTrue(candidate(12) == 45)
    lu.assertTrue(candidate(17) == 60)
    lu.assertTrue(candidate(21) == 119)
    lu.assertTrue(candidate(25) == 168)
end

os.exit(lu.LuaUnit.run())