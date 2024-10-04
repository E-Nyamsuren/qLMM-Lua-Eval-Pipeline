-- Write a luathon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
local function get_Char(strr)
    local result = 0
    for i = 1, #strr do
        result = result + string.byte(strr:sub(i, i))
    end
    return result % 26
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_Char
    lu.assertEquals(candidate('abc'), 'f')
    lu.assertEquals(candidate('gfg'), 't')
    lu.assertEquals(candidate('ab'), 'c')
end

os.exit(lu.LuaUnit.run())