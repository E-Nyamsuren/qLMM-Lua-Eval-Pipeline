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
    local vowels = 'aeiou'
    for i = 1, #s do
        if vowels:find(s:sub(i, i)) then
            count = count + 1
        end
    end
    if s:sub(-1) == 'y' or s:sub(-1) == 'Y' then
        count = count + 1
    end
    return count
end
print(vowels_count('abcde')) -- Expected output: 2
print(vowels_count('ACEDY')) -- Expected output: 3
print(vowels_count('rhythm')) -- Expected output: 0
print(vowels_count('SYZYGY')) -- Expected output: 1
print(vowels_count('quickly')) -- Expected output: 2
print(vowels_count('')) -- Expected output: 0
print(vowels_count('AEIOUY')) -- Expected output: 6
print(vowels_count('bcdfghjklmnpqrstvwxyz')) -- Expected output: 0
print(vowels_count('Y')) -- Expected output: 1
print(vowels_count('y')) -- Expected output: 1
print(vowels_count('Yy')) -- Expected output: 2
print(vowels_count('Yyy')) -- Expected output: 3
print(vowels_count('Yyyy')) -- Expected output: 4
print(vowels_count('Yyyyy')) -- Expected output: 5


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