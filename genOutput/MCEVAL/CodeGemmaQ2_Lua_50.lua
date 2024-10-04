
--[[
Given two integers a and b, return the sum if the sum is even, or return the product of a and b if the sum is odd.

Examples:
    evenSumOrOddProduct(2, 3) -- returns 6
]]--
function evenSumOrOddProduct(a, b) strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick strick

lu = require('luaunit')

function testEvenSumOrOddProduct()
    local candidate = evenSumOrOddProduct
    lu.assertTrue(candidate(2, 3) == 6)
    lu.assertTrue(candidate(5, 5) == 10)
    lu.assertTrue(candidate(1, 1) == 2)
    lu.assertTrue(candidate(0, 0) == 0)
    lu.assertTrue(candidate(-1, -1) == -2)
    lu.assertTrue(candidate(100, 200) == 300)
    lu.assertTrue(candidate(3, 4) == 12)
    lu.assertTrue(candidate(-5, 5) == 0)
    lu.assertTrue(candidate(7, 8) == 56)
    lu.assertTrue(candidate(9, 10) == 90)
    lu.assertTrue(candidate(11, 14) == 154)
end

os.exit(lu.LuaUnit.run())