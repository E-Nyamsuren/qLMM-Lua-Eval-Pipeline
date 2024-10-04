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
    local alphabet = "abcdefghijklmnopqrstuvwxyz"
    local encrypted = ""
    for i = 1, #s do
        local char = string.sub(s, i, i)
        local index = string.find(alphabet, char)
        if index then
            local newIndex = (index + 2) * 2
            if newIndex > #alphabet then
                newIndex = newIndex - #alphabet
            end
            encrypted = encrypted .. string.sub(alphabet, newIndex, newIndex)
        else
            encrypted = encrypted .. char
        end
    end
    return encrypted
end
print(encrypt("hi"))
print(encrypt("asdfghjkl"))
print(encrypt("gf"))
print(encrypt("et"))
<|file_separator|>

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