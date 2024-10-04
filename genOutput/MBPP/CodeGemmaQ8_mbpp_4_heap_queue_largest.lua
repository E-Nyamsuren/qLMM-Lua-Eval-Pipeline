-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
    local heap = {}
    local function swap(i, j)
        local tmp = heap[i]
        heap[i] = heap[j]
        heap[j] = tmp
    end
    local function heapify(i)
        local l = 2 * i
        local r = 2 * i + 1
        local largest = i
        if l <= n and heap[l] > heap[largest] then
            largest = l
        end
        if r <= n and heap[r] > heap[largest] then
            largest = r
        end
        if largest ~= i then
            swap(i, largest)
            heapify(largest)
        end
    end
    for i = 1, n do
        heap[i] = nums[i]
    end
    for i = n / 2, 1, -1 do
        heapify(i)
    end
    for i = n, 2, -1 do
        swap(1, i)
        n = n - 1
        heapify(1)
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