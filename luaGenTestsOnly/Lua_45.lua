lu = require('luaunit')

function testMinOperations()
    local candidate = minOperations
    lu.assertTrue(candidate(5, {1, 2, 3, 2, 1}) == 2)
    lu.assertTrue(candidate(4, {1, 1, 2, 2}) == 1)
    lu.assertTrue(candidate(5, {1, 2, 1, 4, 2}) == 3)
    lu.assertTrue(candidate(5, {5, 5, 5, 5, 5}) == 0)
    lu.assertTrue(candidate(6, {1, 1, 1, 2, 2, 2}) == 1)
    lu.assertTrue(candidate(7, {1, 3, 3, 3, 2, 2, 2}) == 2)
    lu.assertTrue(candidate(8, {4, 4, 4, 4, 3, 3, 3, 3}) == 1)
    lu.assertTrue(candidate(9, {1, 2, 3, 4, 5, 6, 7, 8, 9}) == 8)
    lu.assertTrue(candidate(10, {1, 2, 1, 2, 1, 2, 1, 2, 1, 2}) == 5)
    lu.assertTrue(candidate(3, {3, 3, 3}) == 0)
    lu.assertTrue(candidate(4, {2, 1, 1, 2}) == 1)
end

os.exit(lu.LuaUnit.run())