-- Write a function to calculate the value of 'a' to the power 'b'.
local function power(a, b)
    if a == 0 then
        return 0
    end
    if b == 0 then
        return 1
    end
    if b < 0 then
        return 1 / power(a, -b)
    end
    local result = 1
    while b > 0 do
        result = result * a
        b = b - 1
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = power
    lu.assertEquals(candidate(3, 4), 81)
    lu.assertEquals(candidate(2, 3), 8)
    lu.assertEquals(candidate(5, 5), 3125)
end

os.exit(lu.LuaUnit.run())