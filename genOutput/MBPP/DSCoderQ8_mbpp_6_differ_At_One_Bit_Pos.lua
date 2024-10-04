-- Write a luathon function to check whether the two numbers differ at one bit position only or not.
local function differ_At_One_Bit_Pos(a, b)
    -- XOR operation will give us the bit positions where the two numbers differ
    local xor_res = a ^ b
    -- Count the number of set bits in the XOR result
    local count = 0
    while xor_res ~= 0 do
        xor_res = xor_res & (xor_res - 1)
        count = count + 1
    end
    -- If the count is 1, then the two numbers differ at one bit position only
    return count == 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = differ_At_One_Bit_Pos
    lu.assertEquals(candidate(13, 9), true)
    lu.assertEquals(candidate(15, 8), false)
    lu.assertEquals(candidate(2, 4), false)
    lu.assertEquals(candidate(2, 3), true)
    lu.assertEquals(candidate(5, 1), true)
    lu.assertEquals(candidate(1, 5), true)
end

os.exit(lu.LuaUnit.run())