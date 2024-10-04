-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)
    if a < b then
        if c < a then
            return a
        elseif c > b then
            return c
        else
            return b
        end
    else
        if c < b then
            return b
        elseif c > a then
            return c
        else
            return a
        end
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