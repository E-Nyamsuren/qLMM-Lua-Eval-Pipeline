-- Write a function to reverse words seperated by spaces in a given string.
local function reverse_words(s)
    local words = {}
    for word in s:gmatch("%S+") do
        table.insert(words, word)
    end
    local reversed = ""
    for i = #words, 1, -1 do
        reversed = reversed .. words[i] .. " "
    end
    return reversed:sub(1, #reversed - 1) -- remove trailing space
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_words
    lu.assertEquals(candidate('python program'), 'program python')
    lu.assertEquals(candidate('java language'), 'language java')
    lu.assertEquals(candidate('indian man'), 'man indian')
end

os.exit(lu.LuaUnit.run())