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
print(count_char_position("Abcdefghijklmnopqrstuvwxyz")) -- Should print 26
print(count_char_position("Hello World")) -- Should print 1
print(count_char_position("Programming")) -- Should print 0
print(count_char_position("aBcDeF")) -- Should print 3
print(count_char_position("sUn")) -- Should print 1
print(count_char_position("")) -- Should print 0
print(count_char_position("1234567890")) -- Should print 0
print(count_char_position("!@#$%^&*()")) -- Should print 0
print(count_char_position("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")) -- Should print 52
print(count_char_position("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890")) -- Should print 52
print(count_char_position("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()")) -- Should print 52
print(count_char_position("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()1234567890")) -- Should print 52
print(count_char_position("abcdefghijklmnopqrstuvwxyz

lu = require('luaunit')

function test_humaneval()
local candidate = count_char_position
    lu.assertEquals(candidate('xbcefg'), 2)
    lu.assertEquals(candidate('ABcED'), 3)
    lu.assertEquals(candidate('AbgdeF'), 5)
end

os.exit(lu.LuaUnit.run())