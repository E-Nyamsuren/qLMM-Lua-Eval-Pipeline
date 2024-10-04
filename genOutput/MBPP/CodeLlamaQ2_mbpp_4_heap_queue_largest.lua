-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
    local heap = {}
    for i, num in ipairs(nums) do
        if #heap < n then
            table.insert(heap, num)
        else
            local max_idx = 1
            for j = 2, #heap do
                if heap[j] > heap[max_idx] then
                    max_idx = j
                end
            end
            if num > heap[max_idx] then
                heap[max_idx] = num
            end
        end
    end
    table.sort(heap, function(a, b) return a > b end)
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