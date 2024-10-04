
--[[
Given an array of n distinct integers representing the heights of Kira's friends, 
find the number of ways to choose a triplet (a, b, c) such that the greatest common divisor (GCD) 
of the maximum and minimum values of the triplet is 1.
    >>> countTriplets({1, 5, 7})
    1
]]--
function countTriplets(heights)
    local count = 0
    local n = #heights
    for i = 1, n do
        for j = i + 1, n do
            for k = j + 1, n do
                if gcd(heights[i], heights[j]) == 1 and gcd(heights[j], heights[k]) == 1 then
                    count = count + 1
                end
            end
        end
    end
    return count
end

lu = require('luaunit')

function testCountTriplets()
    local candidate = countTriplets
    lu.assertTrue(candidate({1, 5, 7}) == 1)
    lu.assertTrue(candidate({1, 6, 2, 3}) == 3)
    lu.assertTrue(candidate({16, 4, 8, 2}) == 0)
    lu.assertTrue(candidate({10, 1, 6, 7, 9, 8, 4, 3, 5, 2}) == 77)
    lu.assertTrue(candidate({4, 5, 9, 11, 14}) == 7)
    lu.assertTrue(candidate({15, 10, 6, 9, 7, 3, 12, 8, 11, 1, 2}) == 104)
    lu.assertTrue(candidate({3, 7, 11, 13}) == 4)
    lu.assertTrue(candidate({5, 12, 13, 17, 19}) == 10)
    lu.assertTrue(candidate({2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}) == 87)
    lu.assertTrue(candidate({1, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17}) == 122)
end

os.exit(lu.LuaUnit.run())