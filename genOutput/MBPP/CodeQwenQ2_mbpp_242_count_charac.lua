-- Write a function to count the total number of characters in a string.
local function count_charac(str1)
    local count = 0
    for i in str1:gmatch(".") do
        count = count + 1
    end
    return count
end
print(count_charac("Hello World"))  -- Output: 11
print(count_charac(""))  -- Output: 0
print(count_charac("123456789"))  -- Output: 9
print(count_charac("abcdef"))  -- Output: 6
print(count_charac("@#$%^&*()"))  -- Output: 8
print(count_charac(" "))  -- Output: 1
print(count_charac("a"))  -- Output: 1
print(count_charac("ab"))  -- Output: 2
print(count_charac("abc"))  -- Output: 3
print(count_charac("abcd"))  -- Output: 4
print(count_charac("abcde"))  -- Output: 5
print(count_charac("abcdefghijklmnopqrstuvwxyz"))  -- Output: 26
print(count_charac("ABCDEFGHIJKLMNOPQRSTUVWXYZ"))  -- Output: 26
print(count_charac("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"))  -- Output: 52
print(count_charac("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"))  -- Output: 70
print(count_charac("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()"))  -- Output: 71
print(count_charac("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!@#$%^&*()1234567890"))  -- Output: 81
print(count_

lu = require('luaunit')

function test_humaneval()
local candidate = count_charac
    lu.assertEquals(candidate('python programming'), 18)
    lu.assertEquals(candidate('language'), 8)
    lu.assertEquals(candidate('words'), 5)
end

os.exit(lu.LuaUnit.run())