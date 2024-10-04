-- Write a luathon function to remove duplicate numbers from a given number of tables.
local function two_unique_nums(nums)
    local num_set = {}
    for _, num in ipairs(nums) do
        if num_set[num] then
            return false
        end
        num_set[num] = true
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = two_unique_nums
    lu.assertEquals(candidate({1, 2, 3, 2, 3, 4, 5}), {1, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 2, 4, 5}), {1, 3, 4, 5})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), {1, 2, 3, 4, 5})
end

os.exit(lu.LuaUnit.run())