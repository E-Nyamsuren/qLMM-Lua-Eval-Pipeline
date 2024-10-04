-- Write a function to reverse words seperated by spaces in a given string.
local function reverse_words(s)
    local words = {}
    local i = 1
    for w in s:gmatch("%S+") do
        words[i] = w
        i = i + 1
    end
    local reversed = {}
    for j = #words, 1, -1 do
        reversed[#reversed + 1] = words[j]
    end
    return table.concat(reversed, " ")
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_words
    lu.assertEquals(candidate('python program'), 'program python')
    lu.assertEquals(candidate('java language'), 'language java')
    lu.assertEquals(candidate('indian man'), 'man indian')
end

os.exit(lu.LuaUnit.run())