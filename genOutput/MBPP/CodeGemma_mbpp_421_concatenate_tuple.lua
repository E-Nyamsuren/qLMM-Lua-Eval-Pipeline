-- Write a function to concatenate each element of table by the delimiter.
local function concatenate_tuple(test_tup)
    local str = ""
    for i = 1, #test_tup do
        str = str .. test_tup[i] .. ","
    end
    return str
end

lu = require('luaunit')

function test_humaneval()
local candidate = concatenate_tuple
    lu.assertEquals(candidate({'ID', 'is', 4, 'UTS'}), 'ID-is-4-UTS')
    lu.assertEquals(candidate({'QWE', 'is', 4, 'RTY'}), 'QWE-is-4-RTY')
    lu.assertEquals(candidate({'ZEN', 'is', 4, 'OP'}), 'ZEN-is-4-OP')
end

os.exit(lu.LuaUnit.run())