-- Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
local function count_char_position(str1)
    local count = 0
    local alphabet = "abcdefghijklmnopqrstuvwxyz"
    for i = 1, #str1 do
        local char = str1:sub(i, i):lower()
        if alphabet:find(char) == i then
            count = count + 1
        end
    end
    return count
end
print(count_char_position("Abcdefghijklmnopqrstuvwxyz")) -- Output: 26
print(count_char_position("Hello World")) -- Output: 1
print(count_char_position("Programming")) -- Output: 1
print(count_char_position("Python")) -- Output: 1
print(count_char_position("Java")) -- Output: 1
print(count_char_position("C++")) -- Output: 1
print(count_char_position("JavaScript")) -- Output: 1
print(count_char_position("Ruby")) -- Output: 1
print(count_char_position("Swift")) -- Output: 1
print(count_char_position("Go")) -- Output: 1
print(count_char_position("Kotlin")) -- Output: 1
print(count_char_position("Scala")) -- Output: 1
print(count_char_position("Haskell")) -- Output: 1
print(count_char_position("C#")) -- Output: 1
print(count_char_position("Rust")) -- Output: 1
print(count_char_position("Perl")) -- Output: 1
print(count_char_position("Lua")) -- Output: 1
print(count_char_position("Dart")) -- Output: 1
print(count_char_position("TypeScript")) -- Output: 1
print(count_char_position("R")) -- Output: 1
print(count_char_position("Matlab")) -- Output: 1
print(count_char_position("SQL

lu = require('luaunit')

function test_humaneval()
local candidate = count_char_position
    lu.assertEquals(candidate('xbcefg'), 2)
    lu.assertEquals(candidate('ABcED'), 3)
    lu.assertEquals(candidate('AbgdeF'), 5)
end

os.exit(lu.LuaUnit.run())