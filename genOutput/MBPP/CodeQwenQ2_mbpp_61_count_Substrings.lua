-- Write a luathon function to count the number of substrings with the sum of digits equal to their length.
local function count_Substrings(s)
    local count = 0
    local sum = 0
    local length = 0
    for i = 1, #s do
        if s:sub(i, i):match("%d") then
            sum = sum + tonumber(s:sub(i, i))
            length = length + 1
        else
            if sum == length then
                count = count + 1
            end
            sum = 0
            length = 0
        end
    end
    if sum == length then
        count = count + 1
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