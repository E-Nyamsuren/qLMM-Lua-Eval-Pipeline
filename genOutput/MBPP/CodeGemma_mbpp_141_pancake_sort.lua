-- Write a function to sort a table of elements.
local function pancake_sort(nums)
    local n = #nums
    for i = n, 2, -1 do
        local max = 0
        for j = 1, i do
            if nums[j] > nums[max] then
                max = j
            end
        end
        if max ~= i then
            if max ~= 1 then
                reverse(nums, 1, max)
            end
            reverse(nums, 1, i)
        end
    end
    return nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = pancake_sort
    lu.assertEquals(candidate({15, 79, 25, 38, 69}), {15, 25, 38, 69, 79})
    lu.assertEquals(candidate({98, 12, 54, 36, 85}), {12, 36, 54, 85, 98})
    lu.assertEquals(candidate({41, 42, 32, 12, 23}), {12, 23, 32, 41, 42})
end

os.exit(lu.LuaUnit.run())