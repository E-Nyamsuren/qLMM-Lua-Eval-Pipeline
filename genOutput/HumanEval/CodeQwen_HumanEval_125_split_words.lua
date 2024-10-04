-- Given a string of words, return a table of words split on whitespace, if no whitespaces exists in the text you
-- should split on commas ',' if no commas exists you should return the number of lower-case letters with odd order in the
-- alphabet, ord('a') = 0, ord('b') = 1, ... ord('z') = 25
-- Examples
-- >>> split_words('Hello world!')
-- {'Hello', 'world!'}
-- >>> split_words('Hello,world!')
-- {'Hello', 'world!'}
-- >>> split_words('abcdef')
-- 3
local function split_words(txt)
    if string.find(txt, ' ') then
        return string.split(txt, ' ')
    elseif string.find(txt, ',') then
        return string.split(txt, ',')
    else
        local count = 0
        for i = 1, #txt do
            local c = txt:sub(i, i)
            if c:match('[a-z]') then
                local order = c:byte() - 97
                if order % 2 == 1 then
                    count = count + 1
                end
            end
        end
        return count
    end
end
return split_words

lu = require('luaunit')

function test_humaneval()
local candidate = split_words
    lu.assertEquals(candidate('Hello world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello,world!'), {'Hello', 'world!'})
    lu.assertEquals(candidate('Hello world,!'), {'Hello', 'world,!'})
    lu.assertEquals(candidate('Hello,Hello,world !'), {'Hello,Hello,world', '!'})
    lu.assertEquals(candidate('abcdef'), 3)
    lu.assertEquals(candidate('aaabb'), 2)
    lu.assertEquals(candidate('aaaBb'), 1)
    lu.assertEquals(candidate(''), 0)
end

os.exit(lu.LuaUnit.run())