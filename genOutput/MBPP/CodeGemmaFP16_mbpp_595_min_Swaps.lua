-- Write a luathon function to count minimum number of swaps required to convert one binary number represented as a string to another.
local function min_Swaps(str1, str2)
    local n = #str1
    local swaps = 0
    local i = 1
    while i <= n do
        if str1:sub(i, i) ~= str2:sub(i, i) then
            local j = i
            while j <= n and str1:sub(j, j) ~= str2:sub(j, j) do
                j = j + 1
            end
            if j > n then
                return -1
            end
            swaps = swaps + 1
            i = j + 1
        else
            i = i + 1
        end
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