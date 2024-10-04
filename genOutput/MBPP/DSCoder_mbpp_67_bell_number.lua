-- Write a function to find the number of ways to partition a set of Bell numbers.
local function bell_number(n)
    local bell = {}
    bell[0] = 1
    for i = 1, n do
        bell[i] = 0
        for j = 0, i - 1 do
            bell[j] = bell[j] + bell[j - 1]
        end
        bell[i] = bell[i] + 1
    end
    return bell[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(10), 115975)
    lu.assertEquals(candidate(56), 6775685320645824322581483068371419745979053216268760300)
end

os.exit(lu.LuaUnit.run())