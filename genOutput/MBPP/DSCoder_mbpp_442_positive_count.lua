-- Write a function to find the ration of positive numbers in a table of integers.
local function positive_count(nums)
    local count = 0
    for i, num in ipairs(nums) do
        if num > 0 then
            count = count + 1
        end
    end
    return count / #nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = positive_count
    lu.assertEquals(candidate({0, 1, 2, -1, -5, 6, 0, -3, -2, 3, 4, 6, 8}), 0.54)
    lu.assertEquals(candidate({2, 1, 2, -1, -5, 6, 4, -3, -2, 3, 4, 6, 8}), 0.69)
    lu.assertEquals(candidate({2, 4, -6, -9, 11, -12, 14, -5, 17}), 0.56)
end

os.exit(lu.LuaUnit.run())