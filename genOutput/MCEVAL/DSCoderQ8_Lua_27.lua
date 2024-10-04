
--[[
    Transforms the case of a given letter.
    Parameters:
    - letter (string): The input letter to be transformed.
    Returns:
    - string: The letter with its case reversed. If the input is lowercase, it returns the uppercase version,
    and if the input is uppercase, it returns the lowercase version.

    Example usage:
    print(transform_letter_case('b')) -- Outputs: B
    print(transform_letter_case('Z')) -- Outputs: z
--]]
function transform_letter_case(letter)
    if letter:match("%u") then
        return letter:lower()
    else
        return letter:upper()
    end
end

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