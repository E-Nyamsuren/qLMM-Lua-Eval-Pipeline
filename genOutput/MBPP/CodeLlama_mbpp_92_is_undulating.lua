-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
    local sum = 0
    for i = 1, n do
        sum = sum + i
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())