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
  local alphabet = "abcdefghijklmnopqrstuvwxyz"
  local alphabet_length = string.len(alphabet)
  local alphabet_rotated = alphabet:sub(3, alphabet_length) .. alphabet:sub(1, 2)
  for i = 1, string.len(s) do
    local letter = s:sub(i, i)
    local index = string.find(alphabet, letter)
    local rotated_index = index + 2 * 2
    if rotated_index > alphabet_length then
      rotated_index = rotated_index - alphabet_length
    end
    local rotated_letter = alphabet_rotated:sub(rotated_index, rotated_index)
    result = result .. rotated_letter
  end
  return result
end

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