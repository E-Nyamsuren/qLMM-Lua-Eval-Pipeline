-- Write a luathon function to count minimum number of swaps required to convert one binary number represented as a string to another.
local function min_Swaps(str1, str2)
    local swaps = 0
    local i = 1
    while i <= #str1 do
        if str1:sub(i, i) ~= str2:sub(i, i) then
            swaps = swaps + 1
        end
        i = i + 1
    end
    return swaps
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Swaps
    lu.assertEquals(candidate('1101', '1110'), 1)
    lu.assertEquals(candidate('111', '000'), 'Not Possible')
    lu.assertEquals(candidate('111', '110'), 'Not Possible')
end

os.exit(lu.LuaUnit.run())