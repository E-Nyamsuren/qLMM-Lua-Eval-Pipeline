-- Write a luathon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
local function is_Sum_Of_Powers_Of_Two(n)
    -- Check if the number is even
    if n % 2 == 0 then
        return false
    end
    -- Check if the number is greater than 1
    if n <= 1 then
        return false
    end
    -- Check if the number is a power of 2
    if n & (n - 1) == 0 then
        return false
    end
    -- Check if the number can be represented as sum of non-zero powers of 2
    local count = 0
    while n > 0 do
        if n % 2 == 1 then
            count = count + 1
        end
        n = n / 2
    end
    return count > 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sum_Of_Powers_Of_Two
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(7), false)
    lu.assertEquals(candidate(14), true)
end

os.exit(lu.LuaUnit.run())