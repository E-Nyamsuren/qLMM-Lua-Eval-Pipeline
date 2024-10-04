-- Write a function to count those characters which have vowels as their neighbors in the given string.
local function count_vowels(test_str)
    local count = 0
    local vowels = "aeiou"
    for i = 1, #test_str do
        local char = test_str:sub(i, i)
        if vowels:find(char) then
            local prev_char = test_str:sub(i - 1, i - 1)
            local next_char = test_str:sub(i + 1, i + 1)
            if vowels:find(prev_char) or vowels:find(next_char) then
                count = count + 1
            end
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