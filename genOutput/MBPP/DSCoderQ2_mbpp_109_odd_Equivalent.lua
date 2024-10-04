-- Write a luathon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
local function odd_Equivalent(s, n)
    local count = 0
    local len = #s
    for i = 1, n do
        local new_s = ""
        for j = 1, len do
            new_s = new_s .. string.sub(s, (j % len) + 1, (j % len) + 1)
       
        end
        s = new_s
        local odd_count = 0
        for j = 1, len do
            if tonumber(string.sub(s, j, j)) % 2 == 1 then
                odd_count = odd_count + 1
            end
        end
        if odd_count > count then
            count = odd_count
        end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_Equivalent
    lu.assertEquals(candidate('011001', 6), 3)
    lu.assertEquals(candidate('11011', 5), 4)
    lu.assertEquals(candidate('1010', 4), 2)
end

os.exit(lu.LuaUnit.run())