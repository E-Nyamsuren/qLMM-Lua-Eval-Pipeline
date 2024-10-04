-- Write a luathon function to check whether the two numbers differ at one bit position only or not.
local function differ_At_One_Bit_Pos(a, b)
    local x = a ^ b
    local count = 0
    while (x ~= 0) do
        count = count + 1
        x = x & (x - 1)
    end
    return (count == 1)
end
print(differ_At_One_Bit_Pos(10, 15))
print(differ_At_One_Bit_Pos(10, 14))
print(differ_At_One_Bit_Pos(10, 13))
print(differ_At_One_Bit_Pos(10, 12))
print(differ_At_One_Bit_Pos(10, 11))
<|file_separator|> -- Write a luathon function to check whether the two numbers differ at one bit position only or not.

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