-- Write a function to find the intersection of two tables.
local function intersection_array(array_nums1, array_nums2)
    local result = {}
    local hash = {}
    for _, num in ipairs(array_nums1) do
        hash[num] = true
    end
    for _, num in ipairs(array_nums2) do
        if hash[num] then
            table.insert(result, num)
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = intersection_array
    lu.assertEquals(candidate({1, 2, 3, 5, 7, 8, 9, 10}, {1, 2, 4, 8, 9}), {1, 2, 8, 9})
    lu.assertEquals(candidate({1, 2, 3, 5, 7, 8, 9, 10}, {3, 5, 7, 9}), {3, 5, 7, 9})
    lu.assertEquals(candidate({1, 2, 3, 5, 7, 8, 9, 10}, {10, 20, 30, 40}), {10})
end

os.exit(lu.LuaUnit.run())