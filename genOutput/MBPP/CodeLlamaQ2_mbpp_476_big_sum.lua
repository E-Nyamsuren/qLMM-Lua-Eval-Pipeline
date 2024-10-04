-- Write a luathon function to find the sum of the largest and smallest value in a given table.
local function big_sum(nums)
    local max = 0
    local min = 0
    for i, v in ipairs(nums) do
        if v > max then
            max = v
        end
        if v < min then
            min = v
        end
    end
    return max + min
end

lu = require('luaunit')

function test_humaneval()
local candidate = big_sum
    lu.assertEquals(candidate({1, 2, 3}), 4)
    lu.assertEquals(candidate({-1, 2, 3, 4}), 3)
    lu.assertEquals(candidate({2, 3, 6}), 8)
end

os.exit(lu.LuaUnit.run())