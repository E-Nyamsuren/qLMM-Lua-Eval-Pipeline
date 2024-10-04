-- Write a function to find minimum of three numbers.
local function min_of_three(a, b, c)
    if a < b then
        if a < c then
            return a
        else
            return c
        end
    else
        if b < c then
            return b
        else
            return c
        end
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_of_three
    lu.assertEquals(candidate(10, 20, 0), 0)
    lu.assertEquals(candidate(19, 15, 18), 15)
    lu.assertEquals(candidate(-10, -20, -30), -30)
end

os.exit(lu.LuaUnit.run())