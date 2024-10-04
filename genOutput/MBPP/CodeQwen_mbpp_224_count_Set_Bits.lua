-- Write a luathon function to count the number of set bits (binary digits with value 1) in a given number.
local function count_Set_Bits(n)
    local count = 0
    while n > 0 do
        count = count + n % 2
        n = n // 2
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_Set_Bits
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(4), 1)
    lu.assertEquals(candidate(6), 2)
end

os.exit(lu.LuaUnit.run())