lu = require('luaunit')

function testMaxModeSum()
    local candidate = maxModeSum
    lu.assertTrue(candidate(3, {1, 3, 2}) == 17)
    lu.assertTrue(candidate(4, {4, 1, 2, 3}) == 37)
    lu.assertTrue(candidate(2, {1, 1}) == 4)
    lu.assertTrue(candidate(5, {1, 2, 3, 4, 5}) == 75)
    lu.assertTrue(candidate(1, {100000}) == 100000)
    lu.assertTrue(candidate(5, {5, 3, 2, 4, 1}) == 62)
    lu.assertTrue(candidate(3, {100000, 100000, 100000}) == 900000)
    lu.assertTrue(candidate(3, {2, 2, 5}) == 27)
    lu.assertTrue(candidate(4, {4, 4, 4, 4}) == 64)
    lu.assertTrue(candidate(6, {1, 2, 3, 4, 5, 6}) == 126)
    lu.assertTrue(candidate(3, {3, 1, 2}) == 16)
end

os.exit(lu.LuaUnit.run())