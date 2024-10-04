-- Write a function to calculate the sum of the negative numbers of a given table of numbers.
local function sum_negativenum(nums)
    local sum = 0
    for i, num in ipairs(nums) do
        if num < 0 then
            sum = sum + num
        end
   
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_negativenum
    lu.assertEquals(candidate({2, 4, -6, -9, 11, -12, 14, -5, 17}), -32)
    lu.assertEquals(candidate({10, 15, -14, 13, -18, 12, -20}), -52)
    lu.assertEquals(candidate({19, -65, 57, 39, 152, -639, 121, 44, 90, -190}), -894)
end

os.exit(lu.LuaUnit.run())