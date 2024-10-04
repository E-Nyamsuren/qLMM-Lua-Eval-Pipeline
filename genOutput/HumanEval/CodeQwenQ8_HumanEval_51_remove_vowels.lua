-- remove_vowels is a function that takes string and returns string without vowels.
-- >>> remove_vowels('')
-- ''
-- >>> remove_vowels('abcdef')
-- 'bcdf'
-- >>> remove_vowels('aaaaa')
-- ''
-- >>> remove_vowels('aaBAA')
-- 'B'
-- >>> remove_vowels('zbcd')
-- 'zbcd'
local function remove_vowels(text)
    local vowels = 'aeiouAEIOU'
    local result = ''
    for i = 1, #text do
        local char = text:sub(i, i)
        if not vowels:find(char) then
            result = result .. char
        end
    end
    return result
end
print(remove_vowels('')) -- ''
print(remove_vowels('abcdef')) -- 'bcdf'
print(remove_vowels('aaaaa')) -- ''
print(remove_vowels('aaBAA')) -- 'B'
print(remove_vowels('zbcd')) -- 'zbcd'
```
The `remove_vowels` function iterates over each character in the input string and checks if it is a vowel by seeing if it is present in the `vowels` string. If the character is not a vowel, it is appended to the `result` string. Finally, the `result` string is returned as the output.
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```
```

lu = require('luaunit')

function test_humaneval()
local candidate = remove_vowels
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('abcdef\nghijklm'), 'bcdf\nghjklm')
    lu.assertEquals(candidate('fedcba'), 'fdcb')
    lu.assertEquals(candidate('eeeee'), '')
    lu.assertEquals(candidate('acBAA'), 'cB')
    lu.assertEquals(candidate('EcBOO'), 'cB')
    lu.assertEquals(candidate('ybcd'), 'ybcd')
end

os.exit(lu.LuaUnit.run())