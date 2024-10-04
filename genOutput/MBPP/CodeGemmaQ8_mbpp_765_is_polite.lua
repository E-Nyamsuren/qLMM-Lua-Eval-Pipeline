-- Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/
local function is_polite(n)
    local i = 1
    while i < n do
        if n % i == 0 then
            n = n / i
        else
            i = i + 1
        end
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