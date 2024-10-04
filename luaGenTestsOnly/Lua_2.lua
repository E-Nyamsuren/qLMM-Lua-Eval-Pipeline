lu = require('luaunit')

function testCalculateTriangleArea()
    local candidate = calculate_triangle_area
    -- Triangle with sides 3, 5, 4 should return area close to 6
    local area = candidate(3, 5, 4)
    lu.assertTrue(math.abs(area - 6) < 1e-6)

    -- Not a triangle with sides 1, 1, 4
    area = candidate(1, 1, 4)
    lu.assertTrue(area == -1)

    -- Triangle with sides 7, 24, 25 should return area close to 84
    area = candidate(7, 24, 25)
    lu.assertTrue(math.abs(area - 84) < 1e-6)

    -- Triangle with sides 10.5, 6.2, 7.3 should return a correct area
    area = candidate(10.5, 6.2, 7.3)
    -- Assuming the test is for an area close to an expected value due to precision
    lu.assertTrue(math.abs(area - 22.15) < 1e-2)

    -- print("All tests passed successfully.")
end

os.exit(lu.LuaUnit.run())