lu = require('luaunit')

function test_calculate_triangle_area()
    local candidate = calculate_triangle_area
    lu.assertTrue(math.abs(candidate(1, 2) - 1.0) < 1e-6)
    lu.assertTrue(math.abs(candidate(3, 4) - 6.0) < 1e-6)
    lu.assertTrue(math.abs(candidate(5, 8) - 20.0) < 1e-6)
    lu.assertTrue(math.abs(candidate(7, 3) - 10.5) < 1e-6)
    lu.assertTrue(math.abs(candidate(10, 10) - 50.0) < 1e-6)

    -- print("All tests passed.")
end

os.exit(lu.LuaUnit.run())