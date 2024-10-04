-- Write a luathon function to count the number of substrings with the sum of digits equal to their length.
local function count_Substrings(s)
    local count = 0
    local sum = 0
    local length = 0
    local map = {}
    map[0] = 1
    for i = 1, #s do
        sum = sum + tonumber(s:sub(i,i))
        length = length + 1
        local diff = sum - length
        count = count + (map[diff] or 0)
        map[diff] = (map[diff] or 0) + 1
    end
    return count
end
return count_Substrings

lu = require('luaunit')

function test_humaneval()
local candidate = count_Substrings
    lu.assertEquals(candidate('112112'), 6)
    lu.assertEquals(candidate('111'), 6)
    lu.assertEquals(candidate('1101112'), 12)
end

os.exit(lu.LuaUnit.run())