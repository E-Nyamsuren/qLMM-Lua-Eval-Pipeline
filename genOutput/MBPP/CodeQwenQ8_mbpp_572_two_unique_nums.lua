-- Write a luathon function to remove duplicate numbers from a given number of tables.
local function two_unique_nums(nums)
    local unique_nums = {}
    for _, num in ipairs(nums) do
        if not unique_nums[num] then
            unique_nums[num] = true
        end
    end
    local result = {}
    for num in pairs(unique_nums) do
        table.insert(result, num)
    end
    table.sort(result)
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = two_unique_nums
    lu.assertEquals(candidate({1, 2, 3, 2, 3, 4, 5}), {1, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 5}), {1, 3, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), {1, 2, 3, 4, 5})
end

os.exit(lu.LuaUnit.run())