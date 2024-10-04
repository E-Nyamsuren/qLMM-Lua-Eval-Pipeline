-- Write a function to find k number of smallest pairs which consist of one element from the first table and one element from the second table.
local function k_smallest_pairs(nums1, nums2, k)
    local result = {}
    local i = 1
    local j = 1
    while i <= #nums1 and j <= #nums2 do
        if nums1[i] <= nums2[j] then
            table.insert(result, {nums1[i], nums2[j]})
            i = i + 1
        else
            table.insert(result, {nums1[i], nums2[j]})
            j = j + 1
        end
        k = k - 1
        if k == 0 then
            break
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