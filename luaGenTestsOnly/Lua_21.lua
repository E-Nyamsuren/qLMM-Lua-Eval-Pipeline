lu = require('luaunit')

function testIsSquare()
    local candidate = Is_Square
    lu.assertTrue(candidate(1, {9}) == true)
    lu.assertTrue(candidate(2, {14, 2}) == true)
    lu.assertTrue(candidate(2, {7, 7}) == false)
    lu.assertTrue(candidate(7, {1, 2, 3, 4, 5, 6, 7}) == false)
    lu.assertTrue(candidate(6, {1, 3, 5, 7, 9, 11}) == true)
    lu.assertTrue(candidate(4, {2, 2, 2, 2}) == false)

    -- Additional test cases
    lu.assertTrue(candidate(3, {4, 5, 6}) == false)
    lu.assertTrue(candidate(4, {16, 9, 4, 1}) == false)
    lu.assertTrue(candidate(5, {1, 1, 1, 1, 1}) == false)
    lu.assertTrue(candidate(2, {25, 25}) == false)
    lu.assertTrue(candidate(3, {10, 10, 5}) == true)

    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())