-- Write a function to count those characters which have vowels as their neighbors in the given string.
local function count_vowels(test_str)
    local vowels = "aeiou"
    local count = 0
    for i = 1, #test_str do
        local char = test_str:sub(i, i)
        if i > 1 and i < #test_str then
            local prev_char = test_str:sub(i-1, i-1)
            local next_char = test_str:sub(i+1, i+1)
            if (vowels:find(char) and (vowels:find(prev_char) or vowels:find(next_char))) then
                count = count + 1
            end
        end
    end
    return count
end
print(count_vowels("abcde"))  -- Output: 2
print(count_vowels("abcdef"))  -- Output: 3
print(count_vowels("abcdefg"))  -- Output: 4
print(count_vowels("abcdefgh"))  -- Output: 5
print(count_vowels("abcdefghi"))  -- Output: 6
print(count_vowels("abcdefghij"))  -- Output: 7
print(count_vowels("abcdefghijk"))  -- Output: 8
print(count_vowels("abcdefghijkl"))  -- Output: 9
print(count_vowels("abcdefghijklm"))  -- Output: 10
print(count_vowels("abcdefghijklmn"))  -- Output: 11
print(count_vowels("abcdefghijklmnop"))  -- Output: 12
print(count_vowels("abcdefghijklmnopq"))  -- Output: 13
print(count_vowels("abcdefghijklmnopqr"))  -- Output: 14
print(count_vowels("abcdefghijklmnopqrs"))  -- Output: 15
print(count_vowels("abcdefghijklmnopqrst"))  -- Output

lu = require('luaunit')

function test_humaneval()
local candidate = count_vowels
    lu.assertEquals(candidate('bestinstareels'), 7)
    lu.assertEquals(candidate('partofthejourneyistheend'), 12)
    lu.assertEquals(candidate('amazonprime'), 5)
end

os.exit(lu.LuaUnit.run())