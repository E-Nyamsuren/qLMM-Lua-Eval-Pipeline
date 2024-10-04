-- Write a function vowels_count which takes a string representing
-- a word as input and returns the number of vowels in the string.
-- Vowels in this case are 'a', 'e', 'i', 'o', 'u'. Here, 'y' is also a
-- vowel, but only when it is at the end of the given word.
-- Example:
-- >>> vowels_count('abcde')
-- 2
-- >>> vowels_count('ACEDY')
-- 3
local function vowels_count(s)
    local count = 0
    for i = 1, #s do
        local c = s:sub(i, i):lower()
        if c == 'a' or c == 'e' or c == 'i' or c == 'o' or c == 'u' then
            count = count + 1
        end
    end
    if s:sub(-1):lower() == 'y' then
        count = count + 1
    end
    return count
end
print(vowels_count('abcde')) -- 2
print(vowels_count('ACEDY')) -- 3
print(vowels_count('rhythm')) -- 0
print(vowels_count('SYZYGY')) -- 1
print(vowels_count('')) -- 0
print(vowels_count('AEIOUY')) -- 6
print(vowels_count('bcdfghjklmnpqrstvwxyz')) -- 0
print(vowels_count('Y')) -- 1
print(vowels_count('y')) -- 1
print(vowels_count('Ya')) -- 2
print(vowels_count('YaY')) -- 3
print(vowels_count('YaYa')) -- 4
print(vowels_count('YaYaY')) -- 5
print(vowels_count('YaYaYa')) -- 6
print(vowels_count('YaYaYaY')) -- 7
print(vowels_count('YaYaYaYa')) --

lu = require('luaunit')

function test_humaneval()
local candidate = vowels_count
    lu.assertEquals(candidate('abcde'), 2)
    lu.assertEquals(candidate('Alone'), 3)
    lu.assertEquals(candidate('key'), 2)
    lu.assertEquals(candidate('bye'), 1)
    lu.assertEquals(candidate('keY'), 2)
    lu.assertEquals(candidate('bYe'), 1)
    lu.assertEquals(candidate('ACEDY'), 3)
end

os.exit(lu.LuaUnit.run())