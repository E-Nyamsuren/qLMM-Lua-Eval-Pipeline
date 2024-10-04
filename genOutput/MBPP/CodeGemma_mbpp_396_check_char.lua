-- Write a function to check whether the given string starts and ends with the same character or not.
local function check_char(string)
    local first = string:sub(1,1)
    local last = string:sub(-1)
    if first == last then
        return true
    else
        return false
    end
end
print(check_char("python"))
print(check_char("java"))
print(check_char("php"))
print(check_char("ruby"))
print(check_char("javascript"))
print(check_char("perl"))
print(check_char("c"))
print(check_char("c++"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print(check_char("c#"))
print

lu = require('luaunit')

function test_humaneval()
local candidate = check_char
    lu.assertEquals(candidate('abba'), 'Valid')
    lu.assertEquals(candidate('a'), 'Valid')
    lu.assertEquals(candidate('abcd'), 'Invalid')
end

os.exit(lu.LuaUnit.run())