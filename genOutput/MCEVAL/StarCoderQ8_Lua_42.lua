
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
    local mod = 10^9 + 7
    local function gcd(a, b)
        while b ~= 0 do
            a, b = b, a % b
        end
        return a
    end
    local function lcm(a, b)
        return a * b / gcd(a, b)
    end
    local function pow(a, b)
        local res = 1
        while b > 0 do
            if b % 2 == 1 then
                res = res * a % mod
            end
            a = a * a % mod
            b = b // 2
        end
        return res
    end
    local function inv(a)
        return pow(a, mod - 2)
    end
    local function C(n, k)
        local res = 1
        for i = 1, k do
            res = res * (n - i + 1) % mod
            res = res * inv(i) % mod
        end
        return res
    end
    local function f(n, m, k)
        local res = 0
        for i = 1, n do
            for j = 1, m do
                if i * j < k then
                    res = (res + C(n + m - 2, n - 1)) % mod
                end
            end
        end
        return res
    end
    local function g(n, m, k)
        local res = 0
        for i = 1, n do
            for j =

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