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
 horrend suspicam embra pessiam
 embra ham
end embra
end
end embra
end embra embra
end embra embra embra pessiam embra
end
end
end embra embra embra embra embra pessiam
end embra embra embra embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam embra pessiam

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