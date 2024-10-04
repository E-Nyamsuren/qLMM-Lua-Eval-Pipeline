-- Write a luathon function to find the first non-repeated character in a given string.
local function first_non_repeating_character(str1)
    local char_count = {}
    local non_repeating_chars = {}
    
    for i = 1, #str1 do
        local char = str1:sub(i, i)
        if char_count[char] then
            char_count[char] = char_count[char] + 1
        else
            char_count[char] = 1
            table.insert(non_repeating_chars, char)
        end
    end
    
    for _, char in ipairs(non_repeating_chars) do
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