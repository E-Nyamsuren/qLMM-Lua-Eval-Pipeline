-- Write a luathon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
local function is_Sum_Of_Powers_Of_Two(n)
    local sum = 0
    while n > 0 do
        sum = sum + (n % 2)
        n = n // 2
    end
    return sum > 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sum_Of_Powers_Of_Two
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(7), false)
    lu.assertEquals(candidate(14), true)
end

os.exit(lu.LuaUnit.run())