-- Write a function to find k number of smallest pairs which consist of one element from the first table and one element from the second table.
local function k_smallest_pairs(nums1, nums2, k)
    local m, n = #nums1, #nums2
    local heap = {}
    for i = 1, math.min(k, #nums1) do
        for j = 1, math.min(k, #nums2) do
            local key = i * 10000 + j
            heap[key] = nums1[i] + nums2[j]
            heap.keys = heap.keys or {}
            table.insert(heap.keys, key)
            heap.key_index = heap.key_index or {}
            heap.key_index[key] = #heap.keys
        end
    end
    heap.size = #heap.keys
    min_heapify(heap)
    local result = {}
    for i = 1, math.min(k, heap.size) do
        local key = heap.keys[1]
        local x, y = math.floor(key / 10000), key % 10000
        table.insert(result, {nums1[x], nums2[y]})
        heap.keys[1] = heap.keys[heap.size]
        heap.key_index[heap.keys[1]] = 1
        heap.keys[heap.size] = nil
        heap.key_index[key] = nil
        heap.size = heap.size - 1
        min_heapify(heap)
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = k_smallest_pairs
    lu.assertEquals(candidate({1, 3, 7}, {2, 4, 6}, 2), {{1, 2}, {1, 4}})
    lu.assertEquals(candidate({1, 3, 7}, {2, 4, 6}, 1), {{1, 2}})
    lu.assertEquals(candidate({1, 3, 7}, {2, 4, 6}, 7), {{1, 2}, {1, 4}, {3, 2}, {1, 6}, {3, 4}, {3, 6}, {7, 2}})
end

os.exit(lu.LuaUnit.run())