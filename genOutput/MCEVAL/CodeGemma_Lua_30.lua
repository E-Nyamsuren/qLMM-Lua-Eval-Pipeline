
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
    if s:sub(1,1) == s:sub(2,2) and s:sub(2,2) ~= s:sub(3,3) then
        return "Yes"
    elseif s:sub(2,2) == s:sub(3,3) and s:sub(1,1) ~= s:sub(2,2) then
        return "Yes"
    elseif s:sub(1,1) == s:sub(3,3) and s:sub(2,2) ~= s:sub(3,3) then
        return "Yes"
    else
        return "No"
    end
end
</code>

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