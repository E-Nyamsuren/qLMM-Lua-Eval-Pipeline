-- Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
local function is_polite(n)
    -- Check if n is a power of 2
    if n and not (n & (n - 1)) then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_polite
    lu.assertEquals(candidate(7), 11)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(9), 13)
end

os.exit(lu.LuaUnit.run())