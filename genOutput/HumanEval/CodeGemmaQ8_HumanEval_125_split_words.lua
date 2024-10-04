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
    local words = {}
    local i = 1
    for word in string.gmatch(txt, "%w+") do
        words[i] = word
        i = i + 1
    end
    if #words > 0 then
        return words
    end
    local j = 1
    for word in string.gmatch(txt, "%a+") do
        words[j] = word
        j = j + 1
    end
    if #words > 0 then
        return words
    end
    local count = 0
    for i = 1, #txt do
        local char = string.sub(txt, i, i)
        if char >= 'a' and char <= 'z' then
            local index = string.byte(char) - string.byte('a')
            if index % 2 == 1 then
                count = count + 1
            end
        end
    end
    return count
end

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