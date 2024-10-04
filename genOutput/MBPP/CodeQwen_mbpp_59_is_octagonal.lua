-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
    local a = 1
    local b = 1
    while b < n do
        a = a + 1
        b = a * (3 * a - 2)
    end
    return b == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())