-- Write a function to find k number of smallest pairs which consist of one element from the first table and one element from the second table.
local function k_smallest_pairs(nums1, nums2, k)
    local pairs = {}
    for i = 1, #nums1 do
        for j = 1, #nums2 do
            table.insert(pairs, {nums1[i], nums2[j]})
        end
    end
    table.sort(pairs, function(a, b) return a[1] + a[2] < b[1] + b[2] end)
    local result = {}
    for i = 1, k do
        table.insert(result, pairs[i])
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