-- Write a function to find the nth octagonal number.
local function is_octagonal(n)
    local sum = 0
    for i = 1, n do
        sum = sum + i
    end
    return sum == n * (n + 1) / 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_octagonal
    lu.assertEquals(candidate(5), 65)
    lu.assertEquals(candidate(10), 280)
    lu.assertEquals(candidate(15), 645)
end

os.exit(lu.LuaUnit.run())