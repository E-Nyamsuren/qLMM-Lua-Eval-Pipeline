-- Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
local function is_polite(n)
    if n == 0 then
        return true
    end
    while n % 2 == 0 do
        n = n / 2
    end
    return n == 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_polite
    lu.assertEquals(candidate(7), 11)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(9), 13)
end

os.exit(lu.LuaUnit.run())