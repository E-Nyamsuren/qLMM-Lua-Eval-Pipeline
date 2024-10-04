-- Write a luathon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
local function toggle_middle_bits(n)
    local count = 0
    local temp = n
    local result = 0
    
    -- Count the number of bits in the number
    while temp > 0 do
        count = count + 1
        temp = temp >> 1
    end
    
    -- If the number has only one bit, return the number itself
    if count == 1 then
        return n
    end
    
    -- Toggle the bits of the number except the first and the last bit
    for i = 1, count - 2 do
        result = result | (1 << i)
    end
    
    -- XOR the result with the original number to toggle the bits
    return n ^ result
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