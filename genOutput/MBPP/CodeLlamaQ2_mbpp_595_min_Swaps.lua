-- Write a luathon function to count minimum number of swaps required to convert one binary number represented as a string to another.
local function min_Swaps(str1, str2)
    local count = 0
    while str1 ~= str2 do
        local i = 1
        while i <= #str1 do
            if str1:sub(i, i) ~= str2:sub(i, i) then
                count = count + 1
                str1 = str1:sub(1, i - 1) .. str2:sub(i, i) .. str1:sub(i + 1)
                break
            end
            i = i + 1
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Swaps
    lu.assertEquals(candidate('1101', '1110'), 1)
    lu.assertEquals(candidate('111', '000'), 'Not Possible')
    lu.assertEquals(candidate('111', '110'), 'Not Possible')
end

os.exit(lu.LuaUnit.run())