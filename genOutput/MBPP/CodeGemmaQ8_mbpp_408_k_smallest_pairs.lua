-- Write a function to find k number of smallest pairs which consist of one element from the first table and one element from the second table.
local function k_smallest_pairs(nums1, nums2, k)
    local function compare(a, b)
        return a[1] + a[2] < b[1] + b[2]
    end
    local heap = {}
    for i = 1, math.min(#nums1, k) do
        heap[i] = {nums1[i], 0}
    end
    for i = 1, math.min(#nums2, k) do
        heap[i] = {nums2[i], 0}
    end
    table.sort(heap, compare)
    local result = {}
    for i = 1, k do
        result[i] = {heap[1][1], heap[1][2]}
        heap[1][2] = heap[1][2] + 1
        if heap[1][2] > #nums2 then
            table.remove(heap, 1)
        else
            heap[1][1] = nums2[heap[1][2]]
            table.sort(heap, compare)
        end
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