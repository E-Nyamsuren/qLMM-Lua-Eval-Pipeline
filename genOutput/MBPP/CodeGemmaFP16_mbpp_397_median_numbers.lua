-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)
    local median = 0
    if a >= b and a <= c or a >= c and a <= b then
        median = a
    elseif b >= a and b <= c or b >= c and b <= a then
        median = b
    elseif c >= a and c <= b or c >= b and c <= a then
        median = c
    end
    return median
end

lu = require('luaunit')

function test_humaneval()
local candidate = median_numbers
    lu.assertEquals(candidate(25, 55, 65), 55.0)
    lu.assertEquals(candidate(20, 10, 30), 20.0)
    lu.assertEquals(candidate(15, 45, 75), 45.0)
end

os.exit(lu.LuaUnit.run())