-- Write a function to find the nth decagonal number.
local function is_num_decagonal(n)
    -- The formula to find the nth decagonal number is:
    -- n * (3n - 2)
    return n * (3 * n - 2)
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_num_decagonal
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(7), 175)
    lu.assertEquals(candidate(10), 370)
end

os.exit(lu.LuaUnit.run())