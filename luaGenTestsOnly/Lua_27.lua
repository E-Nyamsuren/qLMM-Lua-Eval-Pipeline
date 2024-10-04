lu = require('luaunit')

function test_transform_letter_case()
    local candidate = transform_letter_case
    lu.assertTrue(candidate('b') == 'B')
    lu.assertTrue(candidate('B') == 'b')

    -- Additional test cases
    lu.assertTrue(candidate('z') == 'Z')
    lu.assertTrue(candidate('Z') == 'z')
    lu.assertTrue(candidate('m') == 'M')
    lu.assertTrue(candidate('M') == 'm')
    lu.assertTrue(candidate('1') == '1') -- Non-alphabetic, should be unchanged
    lu.assertTrue(candidate('!') == '!') -- Non-alphabetic, should be unchanged

    -- print("All tests passed successfully.")
end

os.exit(lu.LuaUnit.run())