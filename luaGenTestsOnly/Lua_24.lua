lu = require('luaunit')

function testProcessIntegerAndChar()
    local candidate = process_integer_and_char
    lu.assertTrue(candidate(234, 'H') == "234,H")
    lu.assertTrue(candidate(123, 'A') == "123,A")
    lu.assertTrue(candidate(0, 'Z') == "0,Z")

    -- Additional tests can be added here with different input values.
end

-- Run the tests to verify that the function works as intended.
os.exit(lu.LuaUnit.run())