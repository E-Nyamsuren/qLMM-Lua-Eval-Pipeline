-- Write a luathon function to find whether the parity of a given number is odd.
local function find_Parity(x)
    -- Initialize parity to 0
    local parity = 0
    
    -- Iterate over all bits of x
    while x > 0 do
        -- XOR the last bit of x with parity
        parity = parity ~ (x & 1)
        
        -- Right shift x by 1
        x = x >> 1
    end
    
    -- If parity is 0, then x is even
    -- If parity is 1, then x is odd
    return parity == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Parity
    lu.assertEquals(candidate(12), false)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(10), false)
end

os.exit(lu.LuaUnit.run())