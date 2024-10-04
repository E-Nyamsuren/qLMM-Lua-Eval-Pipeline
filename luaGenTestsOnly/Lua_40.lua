lu = require('luaunit')

function testCountPowerNumbers()
    local candidate = countPowerNumbers
    lu.assertTrue(candidate(99, 1) == 99)
    lu.assertTrue(candidate(99, 3) == 7)
    lu.assertTrue(candidate(99, 2) == 12)
    lu.assertTrue(candidate(10, 1) == 10)
    lu.assertTrue(candidate(10, 2) == 4)
    lu.assertTrue(candidate(500, 1) == 500)
    lu.assertTrue(candidate(500, 2) == 30)
    lu.assertTrue(candidate(500, 3) == 13)
    lu.assertTrue(candidate(1000, 1) == 1000)
    lu.assertTrue(candidate(1000, 2) == 41)
    lu.assertTrue(candidate(1000, 3) == 17)
    lu.assertTrue(candidate(1000, 93) == 1)
    lu.assertTrue(candidate(50, 2) == 10)
    lu.assertTrue(candidate(50, 3) == 5)
    lu.assertTrue(candidate(2, 3) == 1)
end

os.exit(lu.LuaUnit.run())