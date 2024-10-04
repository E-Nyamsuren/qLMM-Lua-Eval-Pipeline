-- Write a function to sort a table of elements.
local function pancake_sort(nums)
    local n = #nums
    for i = 1, n do
        local max_idx = i
        for j = i + 1, n do
            if nums[j] > nums[max_idx] then
                max_idx = j
            end
        end
        if max_idx ~= i then
            nums[max_idx], nums[i] = nums[i], nums[max_idx]
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