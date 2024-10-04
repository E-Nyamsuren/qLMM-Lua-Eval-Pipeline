-- Write a function to find the median of three numbers.
local function median_numbers(a, b, c)
    if a > b then
        if b > c then
            return b
        elseif a > c then
            return c
        else
            return a
        end
    elseif a > c then
        return a
    elseif b > c then
        return c
    else
        return b
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