-- Write a luathon function to find the first non-repeated character in a given string.
local function first_non_repeating_character(str1)
    local str2 = {}
    for i = 1, #str1 do
        local char = str1:sub(i, i)
        if not str2[char] then
            str2[char] = 1
        else
            str2[char] = str2[char] + 1
        end
    end
    for i = 1, #str1 do
        local char = str1:sub(i, i)
        if str2[char] == 1 then
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