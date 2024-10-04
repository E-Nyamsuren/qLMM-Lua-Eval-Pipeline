-- You'll be given a string of words, and your task is to count the number
-- of boredoms. A boredom is a sentence that starts with the word "I".
-- Sentences are delimited by '.', '?' or '!'.
-- For example:
-- >>> is_bored('Hello world')
-- 0
-- >>> is_bored('The sky is blue. The sun is shining. I love this weather')
-- 1
local function is_bored(S)
    local boredoms = 0
    for sentence in string.gmatch(S, '[^.?!]+') do
        if string.match(sentence, '^I ') then
            boredoms = boredoms + 1
        end
    end
    return boredoms
end
print(is_bored('The sky is blue. The sun is shining. I love this weather')) -- 1
print(is_bored('Hello world')) -- 0
print(is_bored('I am feeling bored. I think I need a break. What do you think?')) -- 2
print(is_bored('I am not sure. I have no idea. I just don\'t know.')) -- 1
print(is_bored('I am so bored. I can\'t even think of anything to do.')) -- 1
print(is_bored('I am so bored. I can\'t even think of anything to do. I just don\'t know.')) -- 1
print(is_bored('I am so bored. I can\'t even think of anything to do. I just don\'t know.')) -- 1
print(is_bored('I am so bored. I can\'t even think of anything to do. I just don\'t know.')) -- 1
print(is_bored('I am so bored. I can\'t even think of anything to do. I just don\'t know.')) -- 1
print(is_bored('I am so bored. I can\'t even think of anything to do. I just don\'t know.')) -- 1
print(is_bored('I am so bored. I can\'t even think of anything to do. I just don\'t know.'

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