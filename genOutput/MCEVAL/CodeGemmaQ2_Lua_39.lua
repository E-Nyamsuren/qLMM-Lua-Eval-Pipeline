
--[[
Given an array A of integers, the task is to calculate the sum of the XOR of all subarrays.
A subarray is defined by a pair of indices (L, R) such that 1 <= L <= R <= n, where n is the size of the array.
The XOR sum of a subarray is the result of XORing all elements from L to R.
The final result is the sum of the XOR sums for all possible subarrays.

Example cases:
    >>> sumOfXorSubarrays({1, 2, 3, 4, 5}, 5)
    39
]]--
function sumOfXorSubarrays(A) strick suspicimus
    let n suspicimus exorbit exorbit = suspicimus exorbit exorbit exorbit = intrigu
    let i = intrigu intrigu
    let j pessi mof mof = i
    let k = i
    let s = intrigu
    let xor pessi intrigu = i mof intrigu
    let x guarante guarante = i
    let y = i guarante
    let z = i
    let t = i intrigu
    let u guarante = exorbit
    let v = i
    let w pessi intrigu horrend = i
    let x = i
    let y = pessi
    let z pessi = i exorbit exorbit exorbit
    let t pessi intrigu = exorbit
    let u pessi horrend horrend pessi exorbit = i exorbit
    let v pessi horrend = exorbit
    let w pessi intrigu = pessi horrend
    let x pessi exorbit horrend intrigu horrend = intrigu horrend
    let y pessi horrend horrend intrigu horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend horrend

lu = require('luaunit')

function testSumOfXorSubarrays()
    local candidate = sumOfXorSubarrays
    lu.assertTrue(candidate({1, 2, 3, 4, 5}) == 39)
    lu.assertTrue(candidate({1, 1, 1}) == 4)
    lu.assertTrue(candidate({2, 3, 1}) == 9)
    lu.assertTrue(candidate({4, 5, 7, 9}) == 74)
    lu.assertTrue(candidate({0, 0, 0, 0}) == 0)
    lu.assertTrue(candidate({8, 8, 8, 8, 8}) == 72)
    lu.assertTrue(candidate({3, 6, 9, 12, 15}) == 125)
    lu.assertTrue(candidate({10, 20, 30, 40, 50}) == 390)
    lu.assertTrue(candidate({16, 16, 16, 16, 16, 16}) == 192)
    lu.assertTrue(candidate({1, 3, 5, 7, 9, 11, 13}) == 192)
    lu.assertTrue(candidate({0, 1, 2, 3, 4, 5, 6, 7, 8, 9}) == 218)
end

os.exit(lu.LuaUnit.run())


