-- Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
local function find_length(string)
    local max_length = 0
    local zero_count = 0
    local one_count = 0
    local length = 0
    for i = 1, #string do
        if string:sub(i, i) == "0" then
            zero_count = zero_count + 1
        else
            one_count = one_count + 1
        end
        length = zero_count + one_count
        if length > max_length then
            max_length = length
        end
    end
    return max_length
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_length
    lu.assertEquals(candidate('11000010001'), 6)
    lu.assertEquals(candidate('10111'), 1)
    lu.assertEquals(candidate('11011101100101'), 2)
end

os.exit(lu.LuaUnit.run())