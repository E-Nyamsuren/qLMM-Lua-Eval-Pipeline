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


