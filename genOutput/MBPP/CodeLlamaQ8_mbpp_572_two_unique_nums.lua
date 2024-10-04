-- Write a luathon function to remove duplicate numbers from a given number of tables.
local function two_unique_nums(nums)
    local nums_set = {}
    for i = 1, #nums do
        if nums_set[nums[i]] == nil then
            nums_set[nums[i]] = true
        end
    end
    local unique_nums = {}
    for num in pairs(nums_set) do
        table.insert(unique_nums, num)
    end
    return unique_nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = two_unique_nums
    lu.assertEquals(candidate({1, 2, 3, 2, 3, 4, 5}), {1, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 5}), {1, 3, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), {1, 2, 3, 4, 5})
end

os.exit(lu.LuaUnit.run())