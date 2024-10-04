-- remove_vowels is a function that takes string and returns string without vowels.
-- >>> remove_vowels('')
-- ''
-- >>> remove_vowels('abcdef')
-- 'bcdf'
-- >>> remove_vowels('aaaaa')
-- ''
-- >>> remove_vowels('aaBAA')
-- 'B'
-- >>> remove_vowels('zbcd')
-- 'zbcd'
local function remove_vowels(text)
    local result = ""
    for i = 1, #text do
        local c = text:sub(i, i)
        if c ~= 'a' and c ~= 'e' and c ~= 'i' and c ~= 'o' and c ~= 'u' and c ~= 'A' and c ~= 'E' and c ~= 'I' and c ~= 'O' and c ~= 'U' then
            result = result .. c
        end
    end
    return result
end
return remove_vowels
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_vowels
    lu.assertEquals(candidate(''), '')
    lu.assertEquals(candidate('abcdef\nghijklm'), 'bcdf\nghjklm')
    lu.assertEquals(candidate('fedcba'), 'fdcb')
    lu.assertEquals(candidate('eeeee'), '')
    lu.assertEquals(candidate('acBAA'), 'cB')
    lu.assertEquals(candidate('EcBOO'), 'cB')
    lu.assertEquals(candidate('ybcd'), 'ybcd')
end

os.exit(lu.LuaUnit.run())