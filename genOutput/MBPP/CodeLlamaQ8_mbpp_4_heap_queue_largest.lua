-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
    local heap = {}
    for i = 1, n do
        local j = i
        while j > 1 and nums[heap[j]] < nums[heap[j / 2]] do
            heap[j] = heap[j / 2]
            j = j / 2
        end
        heap[j] = nums[i]
    end
    for i = n + 1, #nums do
        local j = 1
        while j * 2 <= i and nums[heap[j]] < nums[heap[j * 2]] do
            heap[j] = heap[j * 2]
            j = j * 2
        end
        heap[j] = nums[i]
    end
    return heap
end

lu = require('luaunit')

function test_humaneval()
local candidate = heap_queue_largest
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 3), {85, 75, 65})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 2), {85, 75})
    lu.assertEquals(candidate({25, 35, 22, 85, 14, 65, 75, 22, 58}, 5), {85, 75, 65, 58, 35})
end

os.exit(lu.LuaUnit.run())