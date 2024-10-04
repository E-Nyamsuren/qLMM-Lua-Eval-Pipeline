lu = require('luaunit')

function test_check_two_equal_digits()
    local candidate = check_two_equal_digits
    lu.assertTrue(candidate("112") == "Yes")
    lu.assertTrue(candidate("123") == "No")
    lu.assertTrue(candidate("232") == "Yes")
    lu.assertTrue(candidate("444") == "No") -- All three characters are equal, not two.
    lu.assertTrue(candidate("121") == "Yes")

    -- Additional test cases to cover more scenarios
    lu.assertTrue(candidate("787") == "Yes")
    lu.assertTrue(candidate("999") == "No") -- All three characters are equal
    lu.assertTrue(candidate("890") == "No")
    lu.assertTrue(candidate("556") == "Yes")
    lu.assertTrue(candidate("353") == "Yes")
    
    -- print("All tests passed successfully.")
end

os.exit(lu.LuaUnit.run())