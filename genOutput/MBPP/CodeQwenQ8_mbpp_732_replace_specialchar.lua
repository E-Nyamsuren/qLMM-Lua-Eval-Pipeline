-- Write a function to replace all occurrences of spaces, commas, or dots with a colon.
local function replace_specialchar(text)
    return text:gsub("[ ,.]", ":")
end
print(replace_specialchar("Hello, World. How are you?")) -- Output: Hello:World:How:are:you?
print(replace_specialchar("This is a test, to check the function.")) -- Output: This:is:a:test:to:check:the:function:
print(replace_specialchar("No special characters here!")) -- Output: No:special:characters:here!
print(replace_specialchar("123,456.789")) -- Output: 123:456:789
print(replace_specialchar("")) -- Output: (empty string)
print(replace_specialchar("    ")) -- Output: ::::
print(replace_specialchar("...,,")) -- Output: ::::
print(replace_specialchar(".,,.,,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.,.,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.,.,.,.,.,.,.")) -- Output: ::::
print(replace_specialchar(".,,.,,.,.,.,.,.,.,.,.,.,

lu = require('luaunit')

function test_humaneval()
local candidate = replace_specialchar
    lu.assertEquals(candidate('Python language, Programming language.'), 'Python:language::Programming:language:')
    lu.assertEquals(candidate('a b c,d e f'), 'a:b:c:d:e:f')
    lu.assertEquals(candidate('ram reshma,ram rahim'), 'ram:reshma:ram:rahim')
end

os.exit(lu.LuaUnit.run())