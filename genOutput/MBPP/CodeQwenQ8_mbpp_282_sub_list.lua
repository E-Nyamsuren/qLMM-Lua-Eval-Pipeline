-- Write a function to subtract two tables element-wise.
local function sub_list(nums1, nums2)
    local result = {}
    for i = 1, #nums1 do
        result[i] = nums1[i] - nums2[i]
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = sub_list
    lu.assertEquals(candidate({1, 2, 3}, {4, 5, 6}), {-3, -3, -3})
    lu.assertEquals(candidate({1, 2}, {3, 4}), {-2, -2})
    lu.assertEquals(candidate({90, 120}, {50, 70}), {40, 50})
end

os.exit(lu.LuaUnit.run())