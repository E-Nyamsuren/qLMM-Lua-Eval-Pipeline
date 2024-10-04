-- Write a luathon function to find the difference between largest and smallest value in a given table.
local function big_diff(nums)
    if #nums == 0 then
        return 0
    end
    local max_num = nums[1]
    local min_num = nums[1]
    for i = 2, #nums do
        if nums[i] > max_num then
            max_num = nums[i]
        elseif nums[i] < min_num then
            min_num = nums[i]
        end
    end
    return max_num - min_num
end

lu = require('luaunit')

function test_humaneval()
local candidate = big_diff
    lu.assertEquals(candidate({1, 2, 3, 4}), 3)
    lu.assertEquals(candidate({4, 5, 12}), 8)
    lu.assertEquals(candidate({9, 2, 3}), 7)
end

os.exit(lu.LuaUnit.run())