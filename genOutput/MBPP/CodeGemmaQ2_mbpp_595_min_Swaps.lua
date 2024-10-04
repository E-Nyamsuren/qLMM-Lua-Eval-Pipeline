-- Write a luathon function to count minimum number of swaps required to convert one binary number represented as a string to another.
local function min_Swaps(str1, str2)
local sml_ pessi pessi pessi suspic sml accla
 pessi
 pessi
 pessi
 pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi pessi

lu = require('luaunit')

function test_humaneval()
local candidate = min_Swaps
    lu.assertEquals(candidate('1101', '1110'), 1)
    lu.assertEquals(candidate('111', '000'), 'Not Possible')
    lu.assertEquals(candidate('111', '110'), 'Not Possible')
end

os.exit(lu.LuaUnit.run())