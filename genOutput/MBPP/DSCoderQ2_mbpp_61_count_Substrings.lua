-- Write a luathon function to count the number of substrings with the sum of digits equal to their length.
local function count_Substrings(s)
    local count = 0
    local n = #s
    for i = 1, n do
        for j = i, n do
            local sum = 0
            for k = i, j do
                sum = sum + tonumber(s:sub(k, k))
           
            end
            if sum == (j - i + 1) then
                count = count + 1
            end
       
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_Substrings
    lu.assertEquals(candidate('112112'), 6)
    lu.assertEquals(candidate('111'), 6)
    lu.assertEquals(candidate('1101112'), 12)
end

os.exit(lu.LuaUnit.run())