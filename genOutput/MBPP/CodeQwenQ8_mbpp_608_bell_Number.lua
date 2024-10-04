-- Write a luathon function to find nth bell number.
local function bell_Number(n)
    local bell = {}
    bell[0] = 1
    for i = 1, n do
        bell[i] = 0
        for j = 0, i - 1 do
            bell[i] = bell[i] + bell[j] * bell[i - j - 1]
        end
    end
    return bell[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())