-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)

    -- Check if the numbers are in ascending order
    if a > b or b > c or a > c then
        return a
    elseif a < b and b < c then
        return b
    else
        return c
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = median_numbers
    lu.assertEquals(candidate(25, 55, 65), 55.0)
    lu.assertEquals(candidate(20, 10, 30), 20.0)
    lu.assertEquals(candidate(15, 45, 75), 45.0)
end

os.exit(lu.LuaUnit.run())