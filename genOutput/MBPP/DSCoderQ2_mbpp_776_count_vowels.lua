-- Write a function to count those characters which have vowels as their neighbors in the given string.
local function count_vowels(test_str)
    local vowels = "aeiou"
    local count = 0
    for i = 1, #test_str do
        local c = test_str:sub(i, i)
        if (i > 1 and vowels:find(c, 1, true)) or (i < #test_str and vowels:find(test, 1, true)) then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_vowels
    lu.assertEquals(candidate('bestinstareels'), 7)
    lu.assertEquals(candidate('partofthejourneyistheend'), 12)
    lu.assertEquals(candidate('amazonprime'), 5)
end

os.exit(lu.LuaUnit.run())