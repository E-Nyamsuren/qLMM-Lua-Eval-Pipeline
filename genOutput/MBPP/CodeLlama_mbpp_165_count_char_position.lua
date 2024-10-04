-- Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
local function count_char_position(str1)
    local str = string.lower(str1)
    local count = 0
    for i = 1, #str do
        if string.find(str, string.sub(str, i, i), 1, true) == i then
            count = count + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_char_position
    lu.assertEquals(candidate('xbcefg'), 2)
    lu.assertEquals(candidate('ABcED'), 3)
    lu.assertEquals(candidate('AbgdeF'), 5)
end

os.exit(lu.LuaUnit.run())