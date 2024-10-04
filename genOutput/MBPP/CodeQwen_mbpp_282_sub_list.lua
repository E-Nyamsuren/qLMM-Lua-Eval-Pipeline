-- Write a function to subtract two tables element-wise.
local function sub_list(nums1, nums2)
    local result = {}
    for i = 1, #nums1 do
        result[i] = nums1[i] - nums2[i]
    end
    return result
end
print(table.concat(sub_list({1, 2, 3}, {1, 2, 3}), ", ")) -- Output: 0, 0, 0
print(table.concat(sub_list({10, 20, 30}, {1, 2, 3}), ", ")) -- Output: 9, 18, 27
print(table.concat(sub_list({5, 15, 25}, {5, 15, 25}), ", ")) -- Output: 0, 0, 0
print(table.concat(sub_list({0, 0, 0}, {1, 2, 3}), ", ")) -- Output: -1, -2, -3
print(table.concat(sub_list({-1, -2, -3}, {1, 2, 3}), ", ")) -- Output: -2, -4, -6
print(table.concat(sub_list({100, 200, 300}, {-100, -200, -300}), ", ")) -- Output: 200, 400, 600
print(table.concat(sub_list({1.5, 2.5, 3.5}, {1.5, 2.5, 3.5}), ", ")) -- Output: 0.0, 0.0, 0.0
print(table.concat(sub_list({1.5, 2.5, 3.5}, {0.5, 1.5, 2.5}), ", ")) -- Output: 1.0, 1.0, 1.0
print(table.concat(sub_list({1.5, 2.5, 3.5}, {-0.5, -1.5, -2.5}), ", ")) -- Output: 2.0, 3.0, 4.0
print(table

lu = require('luaunit')

function test_humaneval()
local candidate = sub_list
    lu.assertEquals(candidate({1, 2, 3}, {4, 5, 6}), {-3, -3, -3})
    lu.assertEquals(candidate({1, 2}, {3, 4}), {-2, -2})
    lu.assertEquals(candidate({90, 120}, {50, 70}), {40, 50})
end

os.exit(lu.LuaUnit.run())