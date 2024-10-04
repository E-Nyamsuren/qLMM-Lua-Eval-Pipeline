-- Write a luathon function to find whether the parity of a given number is odd.
local function find_Parity(x)
    local parity = 0
    while x ~= 0 do
        parity = parity + 1
        x = x & (x - 1)
    end
    return parity % 2 == 0
end
print(find_Parity(10))
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = find_Parity
    lu.assertEquals(candidate(12), false)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(10), false)
end

os.exit(lu.LuaUnit.run())