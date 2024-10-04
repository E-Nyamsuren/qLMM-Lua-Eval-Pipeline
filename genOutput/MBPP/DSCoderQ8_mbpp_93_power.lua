-- Write a function to calculate the value of 'a' to the power 'b'.
local function power(a, b)
    if b == 0 then
        return 1
    else
        return a * power(a, b - 1)
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = power
    lu.assertEquals(candidate(3, 4), 81)
    lu.assertEquals(candidate(2, 3), 8)
    lu.assertEquals(candidate(5, 5), 3125)
end

os.exit(lu.LuaUnit.run())