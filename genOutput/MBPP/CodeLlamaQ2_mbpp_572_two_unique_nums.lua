-- Write a luathon function to remove duplicate numbers from a given number of tables.
local function two_unique_nums(nums)
    local seen = {}
    local result = {}
    for _, num in ipairs(nums) do
        if not seen[num] then
            seen[num] = true
            table.insert(result, num)
        end
    end
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