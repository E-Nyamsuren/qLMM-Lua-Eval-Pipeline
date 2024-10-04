lu = require('luaunit')

function testCalculateTotalScore()
    local candidate = calculate_total_score
    lu.assertTrue(candidate(100,100,100,100,100) == 500)
    lu.assertTrue(candidate(0,0,0,0,0) == 0)
    lu.assertTrue(candidate(20, 30, 40, 10, 50) == 150)
    lu.assertTrue(candidate(23, 45, 67, 89, 12) == 236)
    lu.assertTrue(candidate(5, 5, 5, 5, 5) == 25)
end

os.exit(lu.LuaUnit.run())