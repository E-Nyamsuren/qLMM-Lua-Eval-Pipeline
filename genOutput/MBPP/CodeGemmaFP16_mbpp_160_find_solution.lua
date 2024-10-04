-- Write a function that returns integers x and y that satisfy ax + by = n as a table, or return nil if no solution exists.
local function find_solution(a, b, n)
    local x, y, d = 0, 1, a
    while n % d ~= 0 do
        local q = n / d
        local t = x
        x = x - q * y
        y = t - q * y
        d = d - q * a
    end
    return x, y
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_solution
    lu.assertEquals(candidate(2, 3, 7), {2, 1})
    lu.assertEquals(candidate(4, 2, 7), None)
    lu.assertEquals(candidate(1, 13, 17), {4, 1})
end

os.exit(lu.LuaUnit.run())