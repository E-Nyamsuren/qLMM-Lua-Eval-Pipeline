-- You'll be given a string of words, and your task is to count the number
-- of boredoms. A boredom is a sentence that starts with the word "I".
-- Sentences are delimited by '.', '?' or '!'.
-- For example:
-- >>> is_bored('Hello world')
-- 0
-- >>> is_bored('The sky is blue. The sun is shining. I love this weather')
-- 1
local function is_bored(S)
    local count = 0
    local words = S:split(" ")
    for _, word in ipairs(words) do
        if word:match("^I") then
            count = count + 1
        end
    end
    return count
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = is_bored
    lu.assertEquals(candidate('Hello world'), 0)
    lu.assertEquals(candidate('Is the sky blue?'), 0)
    lu.assertEquals(candidate('I love It !'), 1)
    lu.assertEquals(candidate('bIt'), 0)
    lu.assertEquals(candidate('I feel good today. I will be productive. will kill It'), 2)
    lu.assertEquals(candidate('You and I are going for a walk'), 0)
end

os.exit(lu.LuaUnit.run())