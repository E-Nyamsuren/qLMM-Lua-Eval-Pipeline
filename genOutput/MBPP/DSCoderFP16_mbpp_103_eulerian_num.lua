-- Write a function to find the Eulerian number a(n, m).
local function eulerian_num(n, m)
    if n == 0 then
        return m
    elseif n == 1 then
        return m * m + m + 1
    else
        return eulerian_num(n - 1, m) + m * m + m + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = eulerian_num
    lu.assertEquals(candidate(3, 1), 4)
    lu.assertEquals(candidate(4, 1), 11)
    lu.assertEquals(candidate(5, 3), 26)
end

os.exit(lu.LuaUnit.run())