-- Write a function to find the ascii value of a character.
local function ascii_value(k)
    return string.byte(k)
end
print(ascii_value("a"))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = ascii_value
    lu.assertEquals(candidate('A'), 65)
    lu.assertEquals(candidate('R'), 82)
    lu.assertEquals(candidate('S'), 83)
end

os.exit(lu.LuaUnit.run())