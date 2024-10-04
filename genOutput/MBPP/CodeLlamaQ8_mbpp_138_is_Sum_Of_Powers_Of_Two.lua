-- Write a luathon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
local function is_Sum_Of_Powers_Of_Two(n)
    if n == 0 then
        return false
    end
    local i = 1
    while 2 ^ i <= n do
        if 2 ^ i == n then
            return true
        end
        i = i + 1
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sum_Of_Powers_Of_Two
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(7), false)
    lu.assertEquals(candidate(14), true)
end

os.exit(lu.LuaUnit.run())