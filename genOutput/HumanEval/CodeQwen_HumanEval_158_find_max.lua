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
    local max_word = ""
    local max_unique_chars = 0
    for _, word in ipairs(words) do
        local unique_chars = {}
        for i = 1, #word do
            local char = word:sub(i, i)
            if not unique_chars[char] then
                unique_chars[char] = true
            end
        end
        local unique_count = #unique_chars
        if unique_count > max_unique_chars or (unique_count == max_unique_chars and word < max_word) then
            max_word = word
            max_unique_chars = unique_count
        end
    end
    return max_word
end
print(find_max({'name', 'of', 'string'})) -- 'string'
print(find_max({'name', 'enam', 'game'})) -- 'enam'
print(find_max({'aaaaaaa', 'bb', 'cc'})) -- 'aaaaaaa'
print(find_max({'hello', 'world', 'python', 'programming'})) -- 'programming'
print(find_max({'123', '456', '789'})) -- '123'
print(find_max({'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j'})) -- 'a'
print(find_max({'abc', 'def', 'ghi', 'jkl', 'mno', 'pqr', 'stu', 'vwx', 'yz'})) -- 'abc'
print

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