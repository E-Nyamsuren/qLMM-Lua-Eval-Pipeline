lu = require('luaunit')

function testAddDigits()
    local candidate = addDigits
    lu.assertTrue(candidate(38) == 2)
    lu.assertTrue(candidate(0) == 0)
    lu.assertTrue(candidate(9) == 9)
    lu.assertTrue(candidate(123) == 6)
    lu.assertTrue(candidate(456) == 6)
    lu.assertTrue(candidate(9999) == 9)
    lu.assertTrue(candidate(100) == 1)
    lu.assertTrue(candidate(1010) == 2)
    lu.assertTrue(candidate(1234) == 1)
    lu.assertTrue(candidate(9876) == 3)
    lu.assertTrue(candidate(199) == 1)
end

os.exit(lu.LuaUnit.run())