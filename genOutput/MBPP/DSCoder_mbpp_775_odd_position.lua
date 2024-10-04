-- Write a luathon function to check whether every odd index contains odd numbers of a given table.
local function odd_position(nums)
    for i = 1, #nums, 2 do
        if nums[i] % 2 == 0 then
            return false
        end
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_position
    lu.assertEquals(candidate({2, 1, 4, 3, 6, 7, 6, 3}), true)
    lu.assertEquals(candidate({4, 1, 2}), true)
    lu.assertEquals(candidate({1, 2, 3}), false)
end

os.exit(lu.LuaUnit.run())