-- Write a luathon function to find the sum of common divisors of two given numbers.
local function sum(a, b)
    local sum = 0
    for i = 1, a do
        if a % i == 0 and b % i == 0 then
            sum = sum + i
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum
    lu.assertEquals(candidate(10, 15), 6)
    lu.assertEquals(candidate(100, 150), 93)
    lu.assertEquals(candidate(4, 6), 3)
end

os.exit(lu.LuaUnit.run())