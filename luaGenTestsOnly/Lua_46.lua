lu = require('luaunit')

function testSumOfMultiples()
    local candidate = sumOfMultiples
    lu.assertTrue(candidate(10) == 33)
    lu.assertTrue(candidate(15) == 60)
    lu.assertTrue(candidate(20) == 98)
    lu.assertTrue(candidate(5) == 8)
    lu.assertTrue(candidate(3) == 3)
    lu.assertTrue(candidate(6) == 14)
    lu.assertTrue(candidate(9) == 23)
    lu.assertTrue(candidate(12) == 45)
    lu.assertTrue(candidate(17) == 60)
    lu.assertTrue(candidate(21) == 119)
    lu.assertTrue(candidate(25) == 168)
end

os.exit(lu.LuaUnit.run())