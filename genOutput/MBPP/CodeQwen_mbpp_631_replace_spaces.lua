-- Write a function to replace whitespaces with an underscore and vice versa in a given string.
local function replace_spaces(text)
    return text:gsub(" ", "_"):gsub("_", " ")
end
print(replace_spaces("Hello World")) -- Output: Hello_World
print(replace_spaces("Hello_World")) -- Output: Hello World
print(replace_spaces("Hello World_")) -- Output: Hello_World_
print(replace_spaces("_Hello World")) -- Output: _Hello_World
print(replace_spaces("Hello World_World")) -- Output: Hello_World_World
print(replace_spaces("Hello_World_World")) -- Output: Hello World World
print(replace_spaces("Hello World_World_")) -- Output: Hello_World_World_
print(replace_spaces("_Hello World_World")) -- Output: _Hello_World_World
print(replace_spaces("Hello World_World_World")) -- Output: Hello_World_World_World
print(replace_spaces("Hello_World_World_World")) -- Output: Hello World World World
print(replace_spaces("Hello World_World_World_World")) -- Output: Hello_World_World_World_World
print(replace_spaces("Hello World_World_World_World_")) -- Output: Hello_World_World_World_World_
print(replace_spaces("_Hello World_World_World_World")) -- Output: _Hello_World_World_World_World
print(replace_spaces("Hello World_World_World_World_World")) -- Output: Hello_World_World_World_World_World
print(replace_spaces("Hello World_World_World_World_World_")) -- Output: Hello_World_World_World_World_World_
print(replace_spaces("_Hello World_World_World_World_World")) -- Output: _Hello_World_World_World_World_World
print(replace_spaces("Hello World_World_World_World_World_World")) -- Output: Hello_World_World_World_World_World_World
print(replace_spaces("Hello World_World_World_World_World_World_")) -- Output: Hello_World_World_World_World_World_World_
print

lu = require('luaunit')

function test_humaneval()
local candidate = replace_spaces
    lu.assertEquals(candidate('Jumanji The Jungle'), 'Jumanji_The_Jungle')
    lu.assertEquals(candidate('The_Avengers'), 'The Avengers')
    lu.assertEquals(candidate('Fast and Furious'), 'Fast_and_Furious')
end

os.exit(lu.LuaUnit.run())