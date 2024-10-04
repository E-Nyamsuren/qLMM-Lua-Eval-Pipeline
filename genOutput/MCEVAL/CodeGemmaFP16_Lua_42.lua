
--[[
Given a rectangle paper of size n x m placed on a plane Cartesian coordinate system with its bottom-left corner at (0,0) and top-right corner at (n,m),
you need to calculate the expected number of operations to cut the paper such that the remaining area is less than k. 
In each operation, a line is randomly chosen that is parallel to the axes, passes through points with integer coordinates, 
and cuts through (not just touching the edge) the paper. The bottom or right part of the paper along this line is then discarded.
The answer should be modulo 10^9+7.

For example:
    >>> expectedCuts(3, 3, 4)
    3
    >>> expectedCuts(5, 5, 12)
    2
--]]
function expectedCuts(n, m, k)
    local count = 0
    local x = 0
    local y = 0
    local x_max = n
    local y_max = m
    local x_min = 0
    local y_min = 0
    while x_max > 0 and y_max > 0 do
        local x_mid = math.floor((x_max + x_min) / 2)
        local y_mid = math.floor((y_max + y_min) / 2)
        if x_mid * y_mid >= k then
            x_max = x_mid
            y_max = y_mid
        else
            x_min = x_mid + 1
            y_min = y_mid + 1
            count = count + 1
        end
    end
    return count
end
<|file_separator|>

lu = require('luaunit')

function testExpectedCuts()
    local candidate = expectedCuts
    lu.assertTrue(candidate(2, 4, 10) == 0)
    lu.assertTrue(candidate(2, 4, 8) == 1)
    lu.assertTrue(candidate(2, 4, 2) == 833333342)
    lu.assertTrue(candidate(2, 4, 6) == 250000003)
    lu.assertTrue(candidate(3, 3, 4) == 666666673)
    lu.assertTrue(candidate(5, 5, 12) == 666666673)
    lu.assertTrue(candidate(6, 7, 20) == 722222229)
    lu.assertTrue(candidate(8, 8, 30) == 72727275)
    lu.assertTrue(candidate(10, 10, 50) == 714285721)
    lu.assertTrue(candidate(1, 10, 5) == 945634929)
    lu.assertTrue(candidate(10, 1, 5) == 945634929)
end

os.exit(lu.LuaUnit.run())