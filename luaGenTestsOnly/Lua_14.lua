lu = require('luaunit')

function testDecodeNumbers()
    local candidate = decode_numbers
    lu.assertTrue(candidate("0000") == 4)
    lu.assertTrue(candidate("8888") == 8)
    lu.assertTrue(candidate("1234") == 1)
    lu.assertTrue(candidate("5678") == 3)
    lu.assertTrue(candidate("9012") == 2)
    lu.assertTrue(candidate("1357") == 0)
    lu.assertTrue(candidate("2468") == 4)
    -- Additional test samples
    lu.assertTrue(candidate("9999") == 4)
    lu.assertTrue(candidate("1111") == 0)
    lu.assertTrue(candidate("2222") == 0)
    lu.assertTrue(candidate("3333") == 0)
    lu.assertTrue(candidate("4444") == 4)
    lu.assertTrue(candidate("5555") == 0)
    lu.assertTrue(candidate("6666") == 4)
    lu.assertTrue(candidate("7777") == 0)
    lu.assertTrue(candidate("0001") == 3)
    lu.assertTrue(candidate("2301") == 1)
end

os.exit(lu.LuaUnit.run())