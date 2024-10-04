lu = require('luaunit')

function testCountOddNumbers()
    local candidate = count_odd_numbers
    lu.assertTrue(candidate(5, 1, 4, 3, 2, 5) == 3)
    lu.assertTrue(candidate(4, 2, 2, 0, 0) == 0)
    lu.assertTrue(candidate(6, 7, 7, 8, 1, 9, 10) == 4) -- Additional Test Sample

    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())