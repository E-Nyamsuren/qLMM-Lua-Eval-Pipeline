-- Write a luathon function to find the difference between largest and smallest value in a given table.
local function big_diff(nums)
    local min = math.huge
    local max = -math.huge
    for _, num in ipairs(nums) do
        if num < min then
            min = num
        end
        if num > max then
            max = num
        end
    end
    return max - min
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = big_diff
    lu.assertEquals(candidate({1, 2, 3, 4}), 3)
    lu.assertEquals(candidate({4, 5, 12}), 8)
    lu.assertEquals(candidate({9, 2, 3}), 7)
end

os.exit(lu.LuaUnit.run())