-- Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
local function find_length(string)
    local max_diff = 0
    local cur_diff = 0
    local count_ones = 0
    local count_zeros = 0

lu = require('luaunit')

function test_humaneval()
local candidate = find_length
    lu.assertEquals(candidate('11000010001'), 6)
    lu.assertEquals(candidate('10111'), 1)
    lu.assertEquals(candidate('11011101100101'), 2)
end

os.exit(lu.LuaUnit.run())