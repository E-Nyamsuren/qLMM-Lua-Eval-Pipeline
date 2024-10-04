-- Write a function to reverse words seperated by spaces in a given string.
local function reverse_words(s)
    local words = {}
    for word in string.gmatch(s, "%S+") do
        table.insert(words, word)
    end
    local reversed_s = ""
    for i = #words, 1, -1 do
        reversed_s = reversed_s .. words[i] .. " "
    end
    return string.sub(reversed_s, 1, -2)
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_words
    lu.assertEquals(candidate('python program'), 'program python')
    lu.assertEquals(candidate('java language'), 'language java')
    lu.assertEquals(candidate('indian man'), 'man indian')
end

os.exit(lu.LuaUnit.run())