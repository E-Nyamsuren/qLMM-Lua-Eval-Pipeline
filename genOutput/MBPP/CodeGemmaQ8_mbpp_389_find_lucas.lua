-- Write a function to find the n'th lucas number.
local function find_lucas(n)
    local lucas_numbers = {2, 1}
    for i = 3, n do
        lucas_numbers[i] = lucas_numbers[i - 1] + lucas_numbers[i - 2]
    end
    return lucas_numbers[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_lucas
    lu.assertEquals(candidate(9), 76)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(3), 4)
end

os.exit(lu.LuaUnit.run())