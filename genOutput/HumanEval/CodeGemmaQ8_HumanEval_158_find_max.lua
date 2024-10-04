-- Write a function that accepts a table of strings.
-- The table contains different words. Return the word with maximum number
-- of unique characters. If multiple strings have maximum number of unique
-- characters, return the one which comes first in lexicographical order.
-- >>> find_max({'name', 'of', 'string'})
-- 'string'
-- >>> find_max({'name', 'enam', 'game'})
-- 'enam'
-- >>> find_max({'aaaaaaa', 'bb', 'cc'})
-- 'aaaaaaa'
local function find_max(words)
    local max_unique_chars = 0
    local max_unique_chars_word = ''
    for _, word in ipairs(words) do
        local unique_chars = {}
        for i = 1, #word do
            unique_chars[word:sub(i, i)] = true
        end
        if #unique_chars > max_unique_chars then
            max_unique_chars = #unique_chars
            max_unique_chars_word = word
        end
    end
    return max_unique_chars_word
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_max
    lu.assertEquals(candidate({'name', 'of', 'string'}), 'string')
    lu.assertEquals(candidate({'name', 'enam', 'game'}), 'enam')
    lu.assertEquals(candidate({'aaaaaaa', 'bb', 'cc'}), 'aaaaaaa')
    lu.assertEquals(candidate({'abc', 'cba'}), 'abc')
    lu.assertEquals(candidate({'play', 'this', 'game', 'of', 'footbott'}), 'footbott')
    lu.assertEquals(candidate({'we', 'are', 'gonna', 'rock'}), 'gonna')
    lu.assertEquals(candidate({'we', 'are', 'a', 'mad', 'nation'}), 'nation')
    lu.assertEquals(candidate({'this', 'is', 'a', 'prrk'}), 'this')
    lu.assertEquals(candidate({'b'}), 'b')
    lu.assertEquals(candidate({'play', 'play', 'play'}), 'play')
end

os.exit(lu.LuaUnit.run())