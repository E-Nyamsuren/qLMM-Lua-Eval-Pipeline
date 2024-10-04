-- Write a luathon function to find the difference between largest and smallest value in a given table.
local function big_diff(nums)
    -- Check if the table is empty
    if #nums == 0 then
        return 0
    end
    
    -- Initialize the smallest and largest numbers
    local smallest = nums[1]
    local largest = nums[1]
    
    -- Iterate through the table to find the smallest and largest numbers
    for i = 2, #nums do
        if nums[i] < smallest then
            smallest = nums[i]
        elseif nums[i] > largest then
            largest = nums[i]
        end
    end
    
    -- Return the difference between the largest and smallest numbers
    return largest - smallest
end

lu = require('luaunit')

function test_humaneval()
local candidate = big_diff
    lu.assertEquals(candidate({1, 2, 3, 4}), 3)
    lu.assertEquals(candidate({4, 5, 12}), 8)
    lu.assertEquals(candidate({9, 2, 3}), 7)
end

os.exit(lu.LuaUnit.run())