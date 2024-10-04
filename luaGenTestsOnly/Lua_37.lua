lu = require('luaunit')

function testCountHandshakes()
    local candidate = countHandshakes
    lu.assertTrue(candidate(4, {2, 1, 3, 0}) == 2)
    lu.assertTrue(candidate(6, {0, 1, 2, 3, 4, 5}) == 15)
    lu.assertTrue(candidate(3, {1, 2, 0}) == 1)

    lu.assertTrue(candidate(4, {3, 2, 1, 0}) == 0)
    lu.assertTrue(candidate(4, {0, 1, 2, 3}) == 6)
    lu.assertTrue(candidate(6, {5, 4, 3, 2, 1, 0}) == 0)

    lu.assertTrue(candidate(4, {0, 2, 1, 3}) == 5)
    lu.assertTrue(candidate(5, {3, 1, 4, 2, 0}) == 3)
    lu.assertTrue(candidate(4, {1, 0, 3, 2}) == 4)

    lu.assertTrue(candidate(3, {2, 0, 1}) == 1)
    lu.assertTrue(candidate(5, {1, 3, 0, 2, 4}) == 7)
    lu.assertTrue(candidate(5, {4, 3, 2, 1, 0}) == 0)
end

os.exit(lu.LuaUnit.run())