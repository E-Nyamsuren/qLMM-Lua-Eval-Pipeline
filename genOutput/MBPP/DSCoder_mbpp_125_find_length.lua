-- Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
local function find_length(string)
    local max_diff = 0
    local count_zero = 0
    local count_one = 0
    for i = 1, #string do
        if string:sub(i, i) == '0' then
            count_zero = count_zero + 1
        else
            count_one = count_one + 1
        end
        max_diff = math.max(max_diff, math.abs(count_zero - count_one))
    end
    return max_diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_length
    lu.assertEquals(candidate('11000010001'), 6)
    lu.assertEquals(candidate('10111'), 1)
    lu.assertEquals(candidate('11011101100101'), 2)
end

os.exit(lu.LuaUnit.run())