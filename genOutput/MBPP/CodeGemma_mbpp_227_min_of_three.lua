-- Write a function to find minimum of three numbers.
local function min_of_three(a, b, c)
    local min = a
    if b < min then
        min = b
    end
    if c < min then
        min = c
    end
    return min
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_of_three
    lu.assertEquals(candidate(10, 20, 0), 0)
    lu.assertEquals(candidate(19, 15, 18), 15)
    lu.assertEquals(candidate(-10, -20, -30), -30)
end

os.exit(lu.LuaUnit.run())