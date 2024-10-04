-- Write a function to find k number of smallest pairs which consist of one element from the first table and one element from the second table.
local function k_smallest_pairs(nums1, nums2, k)
    local pairs = {}
    local i = 1
    local j = 1
    while i <= #nums1 and j <= #nums2 and #pairs < k do
        local pair = {nums1[i], nums2[j]}
        if pair[1] < pair[2] then
            i = i + 1
        elseif pair[1] > pair[2] then
            j = j + 1
        else
            table.insert(pairs, pair)
            i = i + 1
            j = j + 1
        end
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