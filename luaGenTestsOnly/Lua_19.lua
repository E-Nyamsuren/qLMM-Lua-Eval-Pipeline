lu = require('luaunit')

function test_count_permutations_of_binary_string()
    local candidate = count_permutations_of_binary_string
    lu.assertTrue(candidate(2, 0) == 2)
    lu.assertTrue(candidate(2, 1) == 0)
    lu.assertTrue(candidate(3, 0) == 0)
    lu.assertTrue(candidate(3, 1) == 3)
    lu.assertTrue(candidate(3, 2) == 0)
    lu.assertTrue(candidate(30, 2) == 145422675)
    lu.assertTrue(candidate(4, 2) == 4)
    lu.assertTrue(candidate(5, 5) == 1)
    lu.assertTrue(candidate(33, 17) == 13884156)
    lu.assertTrue(candidate(1000, 1000) == 1)
    -- Add more test cases if necessary
end

os.exit(lu.LuaUnit.run())