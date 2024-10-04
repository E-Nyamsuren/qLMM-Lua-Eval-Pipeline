-- Write a function to sort a table of elements.
local function pancake_sort(nums)
    local len = #nums
    for i = len, 1, -1 do
        local max_index = max_element(nums, 0, i)
        if max_index != i - 1 then
            flip(nums, 0, max_index)
            flip(nums, 0, i - 1)
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