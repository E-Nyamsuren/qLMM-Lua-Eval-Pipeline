lu = require('luaunit')

function testFindIntegers()
    local candidate = find_integers
    lu.assertTrue(candidate(5, 6) == 2)
    lu.assertTrue(candidate(6, 9) == 3)
    lu.assertTrue(candidate(7, 12) == 3)
    lu.assertTrue(candidate(7, 11) == -1)
    lu.assertTrue(candidate(9, 8) == 1)
    lu.assertTrue(candidate(10, 25) == 5)
    lu.assertTrue(candidate(10000, 8765) == -1)
    
    -- print("All tests passed successfully.")
end

os.exit(lu.LuaUnit.run())