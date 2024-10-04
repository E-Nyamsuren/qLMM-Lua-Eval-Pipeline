-- Write a function to find the nth decagonal number.
local function is_num_decagonal(n)
    local sum = 0
    local i = 1
    while sum < n do
        sum = sum + i
        i = i + 1
    end
    return sum == n
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_num_decagonal
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(7), 175)
    lu.assertEquals(candidate(10), 370)
end

os.exit(lu.LuaUnit.run())