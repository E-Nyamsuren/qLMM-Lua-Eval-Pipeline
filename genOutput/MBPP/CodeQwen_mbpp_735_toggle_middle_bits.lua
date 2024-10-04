-- Write a luathon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
local function toggle_middle_bits(n)
    local count = 0
    local temp = n
    while temp > 0 do
        count = count + 1
        temp = temp >> 1
    end
    local mask = 0
    for i = 2, count - 1 do
        mask = mask | (1 << i)
    end
    return n ^ mask
end
return toggle_middle_bits

lu = require('luaunit')

function test_humaneval()
local candidate = toggle_middle_bits
    lu.assertEquals(candidate(9), 15)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(11), 13)
    lu.assertEquals(candidate(65), 127)
    lu.assertEquals(candidate(77), 115)
end

os.exit(lu.LuaUnit.run())