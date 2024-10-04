-- Write a function to remove lowercase substrings from a given string.
local function remove_lowercase(str1)
    local result = ""
    for i = 1, #str1 do
        local char = str1:sub(i, i)
        if char:match("%u") then
            result = result .. char
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_lowercase
    lu.assertEquals(candidate('PYTHon'), 'PYTH')
    lu.assertEquals(candidate('FInD'), 'FID')
    lu.assertEquals(candidate('STRinG'), 'STRG')
end

os.exit(lu.LuaUnit.run())