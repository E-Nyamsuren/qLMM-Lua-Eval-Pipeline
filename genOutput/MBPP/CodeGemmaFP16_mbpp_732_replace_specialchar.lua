-- Write a function to replace all occurrences of spaces, commas, or dots with a colon.
local function replace_specialchar(text)
    local special_char = {
        [' '] = ':',
        [','] = ':',
        ['.'] = ':',
    }
    local new_text = text
    for special_char_key, special_char_value in pairs(special_char) do
        new_text = new_text:gsub(special_char_key, special_char_value)
    end
    return new_text
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_specialchar
    lu.assertEquals(candidate('Python language, Programming language.'), 'Python:language::Programming:language:')
    lu.assertEquals(candidate('a b c,d e f'), 'a:b:c:d:e:f')
    lu.assertEquals(candidate('ram reshma,ram rahim'), 'ram:reshma:ram:rahim')
end

os.exit(lu.LuaUnit.run())