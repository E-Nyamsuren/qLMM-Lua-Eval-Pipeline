-- Write a luathon function to find nth bell number.
local function bell_Number(n)
    local bell = {1}
    for i = 1, n do
        local row = {1}
        for j = 1, i do
            row[j + 1] = row[j] + bell[j]
        end
        bell[i + 1] = row[i + 1]
    end
    return bell[n + 1]
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())