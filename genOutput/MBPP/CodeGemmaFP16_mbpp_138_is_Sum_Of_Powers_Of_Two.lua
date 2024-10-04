-- Write a luathon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
local function is_Sum_Of_Powers_Of_Two(n)
    local function is_Power_Of_Two(n)
        return n > 0 and (n & (n - 1)) == 0
    end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sum_Of_Powers_Of_Two
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(7), false)
    lu.assertEquals(candidate(14), true)
end

os.exit(lu.LuaUnit.run())