
--[[
Checks if a three-character string has exactly two characters that are the same.

Args:
    s (string): The three-character string to be checked.

Returns:
    string: Returns 'Yes' if the input has exactly two equal characters, otherwise 'No'.
    Examples:
    check_two_equal_digits("112") --> "Yes"
    check_two_equal_digits("123") --> "No"
]]--
function check_two_equal_digits(s)
    local count = 0
    for i = 1, #s do
        for j = i + 1, #s do
            if s:sub(i, i) == s:sub(j, j) then
                count = count + 1
            end
        end
    end
    if count == 2 then
        return "Yes"
    else
        return "No"
    end
end

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