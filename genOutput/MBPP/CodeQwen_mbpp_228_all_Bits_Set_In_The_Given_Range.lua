-- Write a luathon function to check whether all the bits are unset in the given range or not.
local function all_Bits_Set_In_The_Given_Range(n, l, r)
    -- Create a mask with all bits set in the given range
    local mask = ((1 << (r - l + 1)) - 1) << (l - 1)
    -- Apply the mask to n and check if the result is zero
    return (n & mask) == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = all_Bits_Set_In_The_Given_Range
    lu.assertEquals(candidate(4, 1, 2), true)
    lu.assertEquals(candidate(17, 2, 4), true)
    lu.assertEquals(candidate(39, 4, 6), false)
end

os.exit(lu.LuaUnit.run())