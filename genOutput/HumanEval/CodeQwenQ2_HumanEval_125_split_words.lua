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
    -- Check for whitespace
    if string.find(txt, "%s") then
        return string.gmatch(txt, "%S+")
    -- Check for commas
    elseif string.find(txt, ",") then
        return string.gmatch(txt, "%S+")
    else
        -- Count lower-case letters with odd order in the alphabet
        local count = 0
        for i = 1, string.len(txt) do
            local c = string.sub(txt, i, i)
            if string.match(c, "%a") then
                local order = string.byte(c) - string.byte('a')
                if order % 2 ~= 0 then
                    count = count + 1
                end
            end
        end
        return count
    end
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