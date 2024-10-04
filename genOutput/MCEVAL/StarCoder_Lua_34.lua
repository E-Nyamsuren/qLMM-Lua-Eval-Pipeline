
--[[
You are given an array a of n integers. You can perform at most one operation where you select three integers i, j, x (1 <= i <= j <= n) and replace all elements from a[i] to a[j] with x, at a cost of (j - i + 1).
Find the minimum cost to make all elements in the array equal.
    >>> makeEqualAgain(3, {1, 2, 1})
    1
    >>> makeEqualAgain(5, {5, 5, 1, 5, 5})
    1
--]]
function makeEqualAgain(n, b)
    local a = {}
    for i, v in ipairs(b) do
        a[v] = (a[v] or 0) + 1
    end
    local max = 0
    for k, v in pairs(a) do
        max = math.max(max, v)
    end
    return math.max(0, max - 1)
end


lu = require('luaunit')

function testMakeEqualAgain()
    local candidate = makeEqualAgain
    lu.assertTrue(candidate(6, {1,2,3,4,5,1}) == 4)
    lu.assertTrue(candidate(7, {1,1,1,1,1,1,1}) == 0)
    lu.assertTrue(candidate(8, {8,8,8,1,2,8,8,8}) == 2)
    lu.assertTrue(candidate(3, {1,2,3}) == 2)
    lu.assertTrue(candidate(7, {4,3,2,7,1,1,3}) == 6)
    lu.assertTrue(candidate(9, {9,9,2,9,2,5,5,5,3}) == 7)
    lu.assertTrue(candidate(3, {1, 2, 1}) == 1)
    lu.assertTrue(candidate(5, {5, 5, 1, 5, 5}) == 1)
    lu.assertTrue(candidate(4, {1, 1, 1, 1}) == 0)
    lu.assertTrue(candidate(6, {2, 2, 2, 3, 2, 2}) == 1)
    lu.assertTrue(candidate(1, {1}) == 0)
    lu.assertTrue(candidate(2, {1, 2}) == 1)
    lu.assertTrue(candidate(4, {1, 2, 2, 1}) == 2)
    lu.assertTrue(candidate(7, {4, 4, 4, 3, 3, 4, 4}) == 2)
    lu.assertTrue(candidate(6, {5, 4, 4, 4, 5, 5}) == 3)
    lu.assertTrue(candidate(7, {1, 2, 1, 2, 1, 2, 1}) == 5)
end

os.exit(lu.LuaUnit.run())