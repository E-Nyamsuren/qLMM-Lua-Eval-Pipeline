lu = require('luaunit')

function testCountAcuteTriangles()
    local candidate = count_acute_triangles
    lu.assertTrue(candidate({1, 1, 1, 1}) == 4)
    lu.assertTrue(candidate({1, 2, 3}) == 0)
    -- Additional tests to ensure correctness
    lu.assertTrue(candidate({3, 4, 5, 7, 10}) == 0)
    lu.assertTrue(candidate({6, 8, 10, 5, 5, 5}) == 4)
end

os.exit(lu.LuaUnit.run())