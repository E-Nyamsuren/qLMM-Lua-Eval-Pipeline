-- Write a luathon function to check whether every odd index contains odd numbers of a given table.
local function odd_position(nums)
    local odd_nums = 0
    for i, v in ipairs(nums) do
        if i % 2 == 1 and v % 2 == 1 then
            odd_nums = odd_nums + 1
        end
    end
    return odd_nums == #nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_position
    lu.assertEquals(candidate({2, 1, 4, 3, 6, 7, 6, 3}), true)
    lu.assertEquals(candidate({4, 1, 2}), true)
    lu.assertEquals(candidate({1, 2, 3}), false)
end

os.exit(lu.LuaUnit.run())