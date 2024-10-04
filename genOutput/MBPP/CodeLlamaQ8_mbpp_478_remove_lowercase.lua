-- Write a function to remove lowercase substrings from a given string.
local function remove_lowercase(str1)
    local str2 = ""
    for i = 1, #str1 do
        if string.byte(str1, i) >= 65 and string.byte(str1, i) <= 90 then
            str2 = str2 .. string.sub(str1, i, i)
        end
    end
    return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_lowercase
    lu.assertEquals(candidate('PYTHon'), 'PYTH')
    lu.assertEquals(candidate('FInD'), 'FID')
    lu.assertEquals(candidate('STRinG'), 'STRG')
end

os.exit(lu.LuaUnit.run())