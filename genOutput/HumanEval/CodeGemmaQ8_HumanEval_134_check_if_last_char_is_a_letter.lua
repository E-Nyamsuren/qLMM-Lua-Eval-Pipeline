-- Create a function that returns true if the last character
-- of a given string is an alphabetical character and is not
-- a part of a word, and false otherwise.
-- Note: "word" is a group of characters separated by space.
-- Examples:
-- >>> check_if_last_char_is_a_letter('apple pie')
-- false
-- >>> check_if_last_char_is_a_letter('apple pi e')
-- true
-- >>> check_if_last_char_is_a_letter('apple pi e ')
-- false
-- >>> check_if_last_char_is_a_letter('')
-- false
local function check_if_last_char_is_a_letter(txt)
    if txt == "" then
        return false
    end
    local last_char = txt:sub(#txt)
    if last_char:match("%a") then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_if_last_char_is_a_letter
    lu.assertEquals(candidate('apple'), false)
    lu.assertEquals(candidate('apple pi e'), true)
    lu.assertEquals(candidate('eeeee'), false)
    lu.assertEquals(candidate('A'), true)
    lu.assertEquals(candidate('Pumpkin pie '), false)
    lu.assertEquals(candidate('Pumpkin pie 1'), false)
    lu.assertEquals(candidate(''), false)
    lu.assertEquals(candidate('eeeee e '), false)
    lu.assertEquals(candidate('apple pie'), false)
    lu.assertEquals(candidate('apple pi e '), false)
end

os.exit(lu.LuaUnit.run())