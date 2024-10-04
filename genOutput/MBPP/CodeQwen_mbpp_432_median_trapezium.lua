-- Write a function to find the median length of a trapezium.
local function median_trapezium(base1, base2, height)
    -- Check if the input values are valid
    if base1 <= 0 or base2 <= 0 or height <= 0 then
        return "Invalid input values"
    end
    
    -- Calculate the median length
    local median = (base1 + base2) / 2
    
    -- Return the median length
    return median
end

lu = require('luaunit')

function test_humaneval()
local candidate = median_trapezium
    lu.assertEquals(candidate(15, 25, 35), 20)
    lu.assertEquals(candidate(10, 20, 30), 15)
    lu.assertEquals(candidate(6, 9, 4), 7.5)
end

os.exit(lu.LuaUnit.run())