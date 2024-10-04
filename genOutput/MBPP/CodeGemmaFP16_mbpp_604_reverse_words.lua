-- Write a function to reverse words seperated by spaces in a given string.
local function reverse_words(s)
    local words = {}
    local word = ""
    for i = 1, #s do
        local c = s:sub(i, i)
        if c == " " then
            table.insert(words, word)
            word = ""
        else
            word = word .. c
        end
    end
    table.insert(words, word)
    return table.concat(words, " ")
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_words
    lu.assertEquals(candidate('python program'), 'program python')
    lu.assertEquals(candidate('java language'), 'language java')
    lu.assertEquals(candidate('indian man'), 'man indian')
end

os.exit(lu.LuaUnit.run())