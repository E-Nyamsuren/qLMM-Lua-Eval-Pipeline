-- Write a function to find k number of smallest pairs which consist of one element from the first table and one element from the second table.
local function k_smallest_pairs(nums1, nums2, k)
    local pairs = {}
    local len1 = #nums1
    local len2 = #nums2
    local min_heap = {}
    -- Initialize heap
    for i = 1, len1 do
        for j = 1, len2 do
            table.insert(min_heap, {nums1[i], nums2[j]})
        end
    end
    -- Build heap
    heap.build(min_heap)
    -- Get k smallest pairs
    for i = 1, k do
        table.insert(pairs, heap.extract_min(min_heap))
    end
    return pairs
end

lu = require('luaunit')

function test_humaneval()
local candidate = k_smallest_pairs
    lu.assertEquals(candidate({1, 3, 7}, {2, 4, 6}, 2), {{1, 2}, {1, 4}})
    lu.assertEquals(candidate({1, 3, 7}, {2, 4, 6}, 1), {{1, 2}})
    lu.assertEquals(candidate({1, 3, 7}, {2, 4, 6}, 7), {{1, 2}, {1, 4}, {3, 2}, {1, 6}, {3, 4}, {3, 6}, {7, 2}})
end

os.exit(lu.LuaUnit.run())