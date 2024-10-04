-- Write a luathon function to count minimum number of swaps required to convert one binary number represented as a string to another.
local function min_Swaps(str1, str2)
    local count1 = 0
    local count2 = 0
    for i = 1, #str1 do
        if str1:sub(i, i) ~= str2:sub(i, i) then
            if str1:sub(i, i) == '1' then
                count1 = count1 + 1
            else
                count2 = count2 + 1
            end
        end
    end
    return math.max(count1, count2)
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Swaps
    lu.assertEquals(candidate('1101', '1110'), 1)
    lu.assertEquals(candidate('111', '000'), 'Not Possible')
    lu.assertEquals(candidate('111', '110'), 'Not Possible')
end

os.exit(lu.LuaUnit.run())