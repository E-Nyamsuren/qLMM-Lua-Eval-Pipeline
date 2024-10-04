lu = require('luaunit')

function testClassifyInteger()
    local candidate = classify_integer
    lu.assertTrue(candidate("24") == 6)
    lu.assertTrue(candidate("39") == 3)
    lu.assertTrue(candidate("123456789") == 9)
    lu.assertTrue(candidate("123456789012345678901234567890") == 9)
    lu.assertTrue(candidate("12345") == 6)
    lu.assertTrue(candidate("999999999") == 9)
    -- print("All tests passed!")
end

os.exit(lu.LuaUnit.run())