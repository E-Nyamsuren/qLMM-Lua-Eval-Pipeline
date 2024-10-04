-- Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string.
local function replace_blank(str1, char)
    local str2 = ""
    for i = 1, #str1 do
        if str1:sub(i, i) == " " then
            str2 = str2 .. char
        else
            str2 = str2 .. str1:sub(i, i)
        end
    end
    return str2
end
print(replace_blank("Hello World", "*"))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = replace_blank
    lu.assertEquals(candidate('hello people', '@'), 'hello@people')
    lu.assertEquals(candidate('python program language', '$'), 'python$program$language')
    lu.assertEquals(candidate('blank space', '-'), 'blank-space')
end

os.exit(lu.LuaUnit.run())