-- Write a luathon function to check whether all the bits are unset in the given range or not.
local function all_Bits_Set_In_The_Given_Range(n, l, r)
    for i = l to r do
        if bit_is_set(n, i) then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = all_Bits_Set_In_The_Given_Range
    lu.assertEquals(candidate(4, 1, 2), true)
    lu.assertEquals(candidate(17, 2, 4), true)
    lu.assertEquals(candidate(39, 4, 6), false)
end

os.exit(lu.LuaUnit.run())