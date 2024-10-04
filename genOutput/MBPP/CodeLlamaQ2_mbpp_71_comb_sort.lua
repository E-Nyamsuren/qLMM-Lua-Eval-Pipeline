-- Write a function to sort a table of elements.
local function comb_sort(nums)
    local gap = #nums
    while gap > 0 do
        local pos = 1
        while pos < #nums do
            if nums[pos] > nums[pos+gap] then
                nums[pos], nums[pos+gap] = nums[pos+gap], nums[pos]
            end
            pos = pos + 1
        end
        gap = math.floor(gap/1.25)
    end
    return nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = comb_sort
    lu.assertEquals(candidate({5, 15, 37, 25, 79}), {5, 15, 25, 37, 79})
    lu.assertEquals(candidate({41, 32, 15, 19, 22}), {15, 19, 22, 32, 41})
    lu.assertEquals(candidate({99, 15, 13, 47}), {13, 15, 47, 99})
end

os.exit(lu.LuaUnit.run())