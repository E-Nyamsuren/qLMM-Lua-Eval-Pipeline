-- Write a luathon function to count number of digits in a given string.
local function number_ctr(str)
    return #str
end

lu = require('luaunit')

function test_humaneval()
local candidate = number_ctr
    lu.assertEquals(candidate('program2bedone'), 1)
    lu.assertEquals(candidate('3wonders'), 1)
    lu.assertEquals(candidate('123'), 3)
    lu.assertEquals(candidate('3wond-1ers2'), 3)
end

os.exit(lu.LuaUnit.run())