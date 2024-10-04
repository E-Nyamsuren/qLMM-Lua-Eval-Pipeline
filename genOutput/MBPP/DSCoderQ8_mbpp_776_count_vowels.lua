-- Write a function to count those characters which have vowels as their neighbors in the given string.
local function count_vowels(test_str)
    local vowels = "aeiou"
    local count = 0
    for i = 1, #test_str do
        if string.sub(vowels, string.find(vowels, string.sub(test_str, i, i))) then
            if i > 1 and string.sub(vowels, string.find(vowels, string.sub(test_str, i-1, i-1))) then
                count = count + 1
            end
            if i < #test_str and string.sub(vowels, string.find(vowels, string.sub(test_str, i+1, i+1))) then
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