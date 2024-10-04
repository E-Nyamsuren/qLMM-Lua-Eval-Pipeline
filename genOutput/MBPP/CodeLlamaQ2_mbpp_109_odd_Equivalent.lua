-- Write a luathon function to find the number of numbers with an odd value when rotating a binary string the given number of times.
local function odd_Equivalent(s, n)
    local result = 0
    for i = 1, n do
        local new_s = ""
        for j = 1, #s do
            new_s = new_s .. s:sub(j, j)
        end
        new_s = new_s .. s:sub(1, 1)
        for j = 1, #new_s do
            if new_s:sub(j, j) == "1" then
                result = result + 1
            end
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_Equivalent
    lu.assertEquals(candidate('011001', 6), 3)
    lu.assertEquals(candidate('11011', 5), 4)
    lu.assertEquals(candidate('1010', 4), 2)
end

os.exit(lu.LuaUnit.run())