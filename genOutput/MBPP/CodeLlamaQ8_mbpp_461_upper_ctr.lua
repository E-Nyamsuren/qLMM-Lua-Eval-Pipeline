-- Write a luathon function to count the upper case characters in a given string.
local function upper_ctr(str)
    local ctr = 0
    for i = 1, #str do
        if str:sub(i, i):upper() == str:sub(i, i) then
            ctr = ctr + 1
        end
    end
    return ctr
end

lu = require('luaunit')

function test_humaneval()
local candidate = upper_ctr
    lu.assertEquals(candidate('PYthon'), 1)
    lu.assertEquals(candidate('BigData'), 1)
    lu.assertEquals(candidate('program'), 0)
end

os.exit(lu.LuaUnit.run())