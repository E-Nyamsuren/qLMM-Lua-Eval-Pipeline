-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
    local queue = {}
    for i = 1, n do
        local j = i
        while j > 1 and nums[j] > nums[j // 2] do
            nums[j], nums[j // 2] = nums[j // 2], nums[j]
            j = j // 2
        end
    end
    for i = n, 1, -1 do
        queue[i] = nums[i]
    end
    return queue
end

lu = require('luaunit')

function test_humaneval()
local candidate = heap_queue_largest
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 3), {85, 75, 65})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 2), {85, 75})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 5), {85, 75, 65, 58, 35})
end

os.exit(lu.LuaUnit.run())