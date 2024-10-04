-- Write a luathon function to find the sum of the largest and smallest value in a given table.
local function big_sum(nums)
    -- Check if the table is empty
    if #nums == 0 then
        return 0
    end
    
    -- Initialize the smallest and largest values
    local smallest = nums[1]
    local largest = nums[1]
    
    -- Iterate through the table to find the smallest and largest values
    for i = 2, #nums do
        if nums[i] < smallest then
            smallest = nums[i]
        elseif nums[i] > largest then
            largest = nums[i]
        end
    end
    
    -- Return the sum of the smallest and largest values
    return smallest + largest
end

lu = require('luaunit')

function test_humaneval()
local candidate = big_sum
    lu.assertEquals(candidate({1, 2, 3}), 4)
    lu.assertEquals(candidate({-1, 2, 3, 4}), 3)
    lu.assertEquals(candidate({2, 3, 6}), 8)
end

os.exit(lu.LuaUnit.run())