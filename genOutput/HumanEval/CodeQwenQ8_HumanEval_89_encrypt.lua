-- Create a function encrypt that takes a string as an argument and
-- returns a string encrypted with the alphabet being rotated. 
-- The alphabet should be rotated in a manner such that the letters 
-- shift down by two multiplied to two places.
-- For example:
-- >>> encrypt('hi')
-- 'lm'
-- >>> encrypt('asdfghjkl')
-- 'ewhjklnop'
-- >>> encrypt('gf')
-- 'kj'
-- >>> encrypt('et')
-- 'ix'
local function encrypt(s)
    local result = ""
    for i = 1, #s do
        local char = s:sub(i, i)
        local ascii = string.byte(char)
        if ascii >= 97 and ascii <= 122 then
            ascii = ascii + 2 * 2
            if ascii > 122 then
                ascii = ascii - 26
            end
        elseif ascii >= 65 and ascii <= 90 then
            ascii = ascii + 2 * 2
            if ascii > 90 then
                ascii = ascii - 26
            end
        end
        result = result .. string.char(ascii)
    end
    return result
end
print(encrypt('hi')) -- 'lm'
print(encrypt('asdfghjkl')) -- 'ewhjklnop'
print(encrypt('gf')) -- 'kj'
print(encrypt('et')) -- 'ix'

lu = require('luaunit')

function test_humaneval()
local candidate = encrypt
    lu.assertEquals(candidate('hi'), 'lm')
    lu.assertEquals(candidate('asdfghjkl'), 'ewhjklnop')
    lu.assertEquals(candidate('gf'), 'kj')
    lu.assertEquals(candidate('et'), 'ix')
    lu.assertEquals(candidate('faewfawefaewg'), 'jeiajeaijeiak')
    lu.assertEquals(candidate('hellomyfriend'), 'lippsqcjvmirh')
    lu.assertEquals(candidate('dxzdlmnilfuhmilufhlihufnmlimnufhlimnufhfucufh'), 'hbdhpqrmpjylqmpyjlpmlyjrqpmqryjlpmqryjljygyjl')
    lu.assertEquals(candidate('a'), 'e')
end

os.exit(lu.LuaUnit.run())