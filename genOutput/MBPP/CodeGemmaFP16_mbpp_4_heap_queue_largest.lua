-- Write a function to find the n largest integers from a given table of numbers, returned in descending order.
local function heap_queue_largest(nums, n)
    local heap = {}
    local function heap_insert(heap, value)
        table.insert(heap, value)
        local index = #heap
        while index > 1 do
            local parent_index = math.floor(index / 2)
            if heap[parent_index] < value then
                heap[index], heap[parent_index] = heap[parent_index], heap[index]
                index = parent_index
            else
                break
            end
        end
    end
    local function heap_extract_max(heap)
        local max_value = heap[1]
        heap[1], heap[#heap] = heap[#heap], heap[1]
        table.remove(heap)
        local index = 1
        while index <= #heap do
            local left_child_index = 2 * index
            local right_child_index = 2 * index + 1
            local max_child_index = index
            if left_child_index <= #heap and heap[left_child_index] > heap[max_child_index] then
                max_child_index = left_child_index
            end
            if right_child_index <= #heap and heap[right_child_index] > heap[max_child_index] then
                max_child_index = right_child_index
            end
            if max_child_index == index then
                break
            else
                heap[index], heap[max_child_index] = heap[max_child_index], heap[index]
                index = max_child_index
            end
        end
        return max_value
    end
    for _, value in ipairs(nums) do
        heap_insert(heap, value)
        if #heap > n then
            heap_extract_max(heap)
        end
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