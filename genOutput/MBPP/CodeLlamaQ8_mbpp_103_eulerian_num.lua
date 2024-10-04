-- Write a function to find the Eulerian number a(n, m).
local function eulerian_num(n, m)
    local a = 0
    for i = 1, n do
        for j = 1, m do
            if i == j then
                a = a + 1
            end
        end
    end
    return a
end

lu = require('luaunit')

function test_humaneval()
local candidate = eulerian_num
    lu.assertEquals(candidate(3, 1), 4)
    lu.assertEquals(candidate(4, 1), 11)
    lu.assertEquals(candidate(5, 3), 26)
end

os.exit(lu.LuaUnit.run())