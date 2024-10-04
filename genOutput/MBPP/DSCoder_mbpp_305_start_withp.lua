-- Write a function to return two words from a table of words starting with letter 'p'.
local function start_withp(words)
    local word1, word2
    for _, word in ipairs(words) do
        if string.sub(word, 1, 1) == 'p' then
            if not word1 then
                word1 = word
            elseif not word2 then
                word2 = word
            end
        end
    end
    return word1, word2
end

lu = require('luaunit')

function test_humaneval()
local candidate = start_withp
    lu.assertEquals(candidate({'Python PHP', 'Java JavaScript', 'c c++'}), {'Python', 'PHP'})
    lu.assertEquals(candidate({'Python Programming', 'Java Programming'}), {'Python', 'Programming'})
    lu.assertEquals(candidate({'Pqrst Pqr', 'qrstuv'}), {'Pqrst', 'Pqr'})
end

os.exit(lu.LuaUnit.run())