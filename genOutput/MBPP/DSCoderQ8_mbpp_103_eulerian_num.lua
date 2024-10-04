-- Write a function to find the Eulerian number a(n, m).
local function eulerian_num(n, m)
    local a = {}
    for i = 0, n do
        a[i] = {}
        a[i][0] = 1
        for j = 1, i do
            a[i][j] = a[i-1][j] + a[i][j-1]
        end
    end
    return a[n][m]
end

lu = require('luaunit')

function test_humaneval()
local candidate = eulerian_num
    lu.assertEquals(candidate(3, 1), 4)
    lu.assertEquals(candidate(4, 1), 11)
    lu.assertEquals(candidate(5, 3), 26)
end

os.exit(lu.LuaUnit.run())