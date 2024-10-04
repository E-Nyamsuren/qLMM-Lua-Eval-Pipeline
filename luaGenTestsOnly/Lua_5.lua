lu = require('luaunit')

function testCalculateDistance()
    local candidate = calculate_distance
    lu.assertTrue(math.abs(candidate(0, 0, 3, 4) - 5) < 1e-6)
    lu.assertTrue(math.abs(candidate(0, 0, 0, 0) - 0) < 1e-6)
    lu.assertTrue(math.abs(candidate(-1, -1, 2, 2) - 4.242640687) < 1e-6)
    lu.assertTrue(math.abs(candidate(1.5, 3.9, 4.2, -1.1) - 5.68243) < 1e-6)
    -- print("All test cases passed!")
end

os.exit(lu.LuaUnit.run())