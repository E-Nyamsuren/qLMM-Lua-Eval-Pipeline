-- Write a luathon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
local function toggle_middle_bits(n)
    local mask = n
    local count = 0
    while (mask > 0) do
        mask = bit32.rshift(mask, 1)
        count = count + 1
    end
    local middle_bits = bit32.bxor(n, bit32.lshift(3, count - ))
    return middle_bits
end

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