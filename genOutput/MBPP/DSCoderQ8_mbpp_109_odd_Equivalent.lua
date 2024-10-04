-- Write a luathon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
local function odd_Equivalent(s, n)
    local count = 0
    for i = 1, n do
        local rotated = rotate_right(s)
        local odd_count = string.gsub(rotated, "1", "")
        if odd_count % 2 ~= 0 then
            count = count + 1
        end
        s = rotated
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