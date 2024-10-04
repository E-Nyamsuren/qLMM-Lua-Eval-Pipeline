-- Write a function to find words that are longer than n characters from a given table of words.
local function long_words(n, str)
    local words = str:gmatch("%w+")
    local long_words = {}
    for word in words do
        if #word > n then
            table.insert(long_words, word)
        end
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = long_words
    lu.assertEquals(candidate(3, 'python is a programming language'), {'python', 'programming', 'language'})
    lu.assertEquals(candidate(2, 'writing a program'), {'writing', 'program'})
    lu.assertEquals(candidate(5, 'sorting list'), {'sorting'})
end

os.exit(lu.LuaUnit.run())