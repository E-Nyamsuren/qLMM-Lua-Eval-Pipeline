-- Write a function to sort a table of elements.
local function pancake_sort(nums)
    local len = #nums
    for i = 0, len - 1 do
        local max_index = i
        for j = i + 1, len - 1 do
            if nums[j] > nums[max_index] then
                max_index = j
            end
       
        end
        if max_index ~= i then
            nums[i], nums[max_index] = nums[max_index], nums[i]
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