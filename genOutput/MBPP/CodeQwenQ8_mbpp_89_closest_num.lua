-- Write a function to find the closest smaller number than n.
local function closest_num(N)
    -- If N is less than or equal to 1, return -1 as there is no smaller number.
    if N <= 1 then
        return -1
    else
        -- Otherwise, return N - 1 as it is the closest smaller number.
        return N - 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = closest_num
    lu.assertEquals(candidate(11), 10)
    lu.assertEquals(candidate(7), 6)
    lu.assertEquals(candidate(12), 11)
end

os.exit(lu.LuaUnit.run())