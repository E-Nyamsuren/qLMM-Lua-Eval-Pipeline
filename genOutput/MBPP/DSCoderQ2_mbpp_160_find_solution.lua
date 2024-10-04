-- Write a function that returns integers x and y that satisfy ax + by = n as a table, or return nil if no solution exists.
local function find_solution(a, b, n)
    local solutions = {}
    local x = 1
    while x <= n do
        if (n - a * x) % b == 0 then
            local y = (n - a * x) / b
            table.insert(solutions, {x, y})
        end
        x = x + 1
    end
    if #solutions > 0 then
        return solutions
   olution
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_solution
    lu.assertEquals(candidate(2, 3, 7), {2, 1})
    lu.assertEquals(candidate(4, 2, 7), None)
    lu.assertEquals(candidate(1, 13, 17), {4, 1})
end

os.exit(lu.LuaUnit.run())