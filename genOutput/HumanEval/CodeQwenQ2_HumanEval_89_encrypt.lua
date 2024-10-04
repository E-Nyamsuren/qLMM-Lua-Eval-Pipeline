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
        local c = s:sub(i, i)
        local n = string.byte(c)
        if n >= 97 and n <= 122 then
            n = (n - 97 + 2) % 26 + 97
        elseif n >= 65 and n <= 90 then
            n = (n - 65 + 2) % 26 + 65
        end
        result = result .. string.char(n)
    end
    return result
end
print(encrypt('hi'))  -- Expected output: 'lm'
print(encrypt('asdfghjkl'))  -- Expected output: 'ewhjklnop'
print(encrypt('gf'))  -- Expected output: 'kj'
print(encrypt('et'))  -- Expected output: 'ix'

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