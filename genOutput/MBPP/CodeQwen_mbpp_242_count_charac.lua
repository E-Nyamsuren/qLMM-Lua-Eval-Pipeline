-- Write a function to count the total number of characters in a string.
local function count_charac(str1)
    local count = 0
    for i in str1:gmatch"." do
        count = count + 1
    end
    return count
end
print(count_charac("Hello World")) -- Output: 11
print(count_charac("")) -- Output: 0
print(count_charac("1234567890")) -- Output: 10
print(count_charac("!@#$%^&*()")) -- Output: 10
print(count_charac("abcdefghijklmnopqrstuvwxyz")) -- Output: 26
print(count_charac("ABCDEFGHIJKLMNOPQRSTUVWXYZ")) -- Output: 26
print(count_charac(" ")) -- Output: 1
print(count_charac("\n")) -- Output: 1
print(count_charac("\t")) -- Output: 1
print(count_charac("\r")) -- Output: 1
print(count_charac("\f")) -- Output: 1
print(count_charac("\v")) -- Output: 1
print(count_charac("\a")) -- Output: 1
print(count_charac("\b")) -- Output: 1
print(count_charac("\e")) -- Output: 1
print(count_charac("\o")) -- Output: 1
print(count_charac("\u")) -- Output: 1
print(count_charac("\x")) -- Output: 1
print(count_charac("\0")) -- Output: 1
print(count_charac("\1")) -- Output: 1
print(count_charac("\2")) -- Output: 1
print(count_charac("\3")) -- Output: 1
print(count_charac("\4")) -- Output: 1
print(count_charac("\5")) -- Output: 1
print(count_charac("\6")) -- Output: 1
print(count_charac("\7")) -- Output: 1
print(count_charac("\8")) -- Output: 1
print(count_charac

lu = require('luaunit')

function test_humaneval()
local candidate = count_charac
    lu.assertEquals(candidate('python programming'), 18)
    lu.assertEquals(candidate('language'), 8)
    lu.assertEquals(candidate('words'), 5)
end

os.exit(lu.LuaUnit.run())