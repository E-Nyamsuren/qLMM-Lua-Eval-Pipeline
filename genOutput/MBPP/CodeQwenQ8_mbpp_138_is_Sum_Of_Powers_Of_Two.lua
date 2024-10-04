-- Write a luathon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
local function is_Sum_Of_Powers_Of_Two(n)
    -- Check if the number is less than or equal to 0
    if n <= 0 then
        return false
    end
    -- Check if the number is a power of 2
    if n == 1 then
        return true
    end
    -- Check if the number can be represented as sum of non-zero powers of 2
    while n > 0 do
        -- If the number is even, divide it by 2
        if n % 2 == 0 then
            n = n / 2
        -- If the number is odd, subtract 1 from it
        else
            n = n - 1
        end
    end
    -- If the number can be represented as sum of non-zero powers of 2, return true
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sum_Of_Powers_Of_Two
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(7), false)
    lu.assertEquals(candidate(14), true)
end

os.exit(lu.LuaUnit.run())