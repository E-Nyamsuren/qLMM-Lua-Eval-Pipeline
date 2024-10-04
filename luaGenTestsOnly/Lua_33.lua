lu = require('luaunit')

function testNewModuloFactorial()
    local candidate = newModuloFactorial
    lu.assertTrue(candidate(3, 7) == 6)
    lu.assertTrue(candidate(10, 3) == 1)
    lu.assertTrue(candidate(11, 7) == 4)
    lu.assertTrue(candidate(45, 7) == 1)
    lu.assertTrue(candidate(14, 7) == 2)
    lu.assertTrue(candidate(1919, 10007) == 3152)
    lu.assertTrue(candidate(810, 10007) == 3679)
    lu.assertTrue(candidate(3, 7) == 6)
    lu.assertTrue(candidate(10, 3) == 1)
    lu.assertTrue(candidate(1, 2) == 1)
    lu.assertTrue(candidate(5, 11) == 10)
    lu.assertTrue(candidate(6, 13) == 5)
    lu.assertTrue(candidate(8, 17) == 13)
    lu.assertTrue(candidate(15, 19) == 16)
    lu.assertTrue(candidate(21, 23) == 1)
    lu.assertTrue(candidate(30, 29) == 28)
    lu.assertTrue(candidate(100, 101) == 100)
end

os.exit(lu.LuaUnit.run())