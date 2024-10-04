-- Write a function to replace whitespaces with an underscore and vice versa in a given string.
local function replace_spaces(text)
    return text:gsub(" ", "_"):gsub("_", " ")
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_spaces
    lu.assertEquals(candidate('Jumanji The Jungle'), 'Jumanji_The_Jungle')
    lu.assertEquals(candidate('The_Avengers'), 'The Avengers')
    lu.assertEquals(candidate('Fast and Furious'), 'Fast_and_Furious')
end

os.exit(lu.LuaUnit.run())