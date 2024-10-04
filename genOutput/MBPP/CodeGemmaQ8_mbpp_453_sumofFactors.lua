-- Write a luathon function to find the sum of even factors of a number.
local function sumofFactors(n)
    local sum = 0
    for i = 1, n do
        if n % i == 0 then
            if i % 2 == 0 then
                sum = sum + i
            end
        end
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sumofFactors
    lu.assertEquals(candidate(18), 26)
    lu.assertEquals(candidate(30), 48)
    lu.assertEquals(candidate(6), 8)
end

os.exit(lu.LuaUnit.run())