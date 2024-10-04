-- Write a luathon function to reverse only the vowels of a given string (where y is not a vowel).
local function reverse_vowels(str1)
    local vowels = "aeiouAEIOU"
    local str1_table = {}
    for i = 1, #str1 do
        table.insert(str1_table, str1:sub(i, i))
    end
    local left, right = 1, #str1
    while left < right do
        if not vowels:find(str1_table[left]) then
            left = left + 1
        elseif not vowels:find(str1_table[right]) then
            right = right - 1
        else
            str1_table[left], str1_table[right] = str1_table[right], str1_table[left]
            left = left + 1
            right = right - 1
        end
    end
    return table.concat(str1_table)
end

lu = require('luaunit')

function test_humaneval()
local candidate = reverse_vowels
    lu.assertEquals(candidate('Python'), 'Python')
    lu.assertEquals(candidate('USA'), 'ASU')
    lu.assertEquals(candidate('ab'), 'ab')
end

os.exit(lu.LuaUnit.run())