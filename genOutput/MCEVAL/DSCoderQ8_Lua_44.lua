
--[[
Given an array of n distinct integers representing the heights of Kira's friends, 
find the number of ways to choose a triplet (a, b, c) such that the greatest common divisor (GCD) 
of the maximum and minimum values of the triplet is 1.
    >>> countTriplets({1, 5, 7})
    1
]]--
function countTriplets(heights)
    local n = #heights
    local gcd = function(a, b)
        while b ~= 0 do
            a, b = b, a % b
        end
        return a
    end
    local count = {}
    for i = 1, n do
        count[heights[i]] = (count[heights[i]] or 0) + 1
    end
    local ans = 0
    for i = 1, n do
        local a = heights[i]
        local cnt = count[a]
        if a % 2 == 0 and count[a // 2] then
            cnt = cnt + count[a // 2]
        end
        for j = 1, i - 1 do
            local b = heights[j]
            if gcd(a, b) == 1 then
                ans = ans + cnt * count[b]
            end
        end
    end
    return ans
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