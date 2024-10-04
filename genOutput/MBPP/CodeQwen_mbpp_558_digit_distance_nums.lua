-- Write a luathon function to find the sum of the per-digit difference between two integers.
local function digit_distance_nums(n1, n2)
    -- Convert the integers to strings
    local str1 = tostring(n1)
    local str2 = tostring(n2)
    
    -- Initialize the sum of the per-digit differences
    local sum = 0
    
    -- Iterate over the digits of the two numbers
    for i = 1, #str1 do
        -- Calculate the per-digit difference
        local diff = math.abs(tonumber(str1:sub(i, i)) - tonumber(str2:sub(i, i)))
        
        -- Add the per-digit difference to the sum
        sum = sum + diff
    end
    
    -- Return the sum of the per-digit differences
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = digit_distance_nums
    lu.assertEquals(candidate(1, 2), 1)
    lu.assertEquals(candidate(23, 56), 6)
    lu.assertEquals(candidate(123, 256), 7)
end

os.exit(lu.LuaUnit.run())