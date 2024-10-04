-- Write a luathon function to find the first non-repeated character in a given string.
local function first_non_repeating_character(str1)
    local str2 = str1:lower()
    local char_count = {}
    for i = 1, #str2 do
        local char = str2:sub(i, i)
        if char_count[char] == nil then
            char_count[char] = 1
        else
            char_count[char] = char_count[char] + 1
        end
    end
    for i = 1, #str2 do
        local char = str2:sub(i, i)
        if char_count[char] == 1 then
            return char
        end
    end
    return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_non_repeating_character
    lu.assertEquals(candidate('abcabc'), None)
    lu.assertEquals(candidate('abc'), 'a')
    lu.assertEquals(candidate('ababc'), 'c')
end

os.exit(lu.LuaUnit.run())