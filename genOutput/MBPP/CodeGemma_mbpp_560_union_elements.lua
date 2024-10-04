-- Write a function to find the union of the elements of two given tables and output them in sorted order.
local function union_elements(test_tup1, test_tup2)
    local set2 = {}
    local result = {}
    for _, v in ipairs(test_tup2) do set2[v] = true end
    for _, v in ipairs(test_tup1) do
        if not set2[v] then
            result[#result + 1] = v
            set2[v] = true
        end
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = union_elements
    lu.assertEquals(candidate({3, 4, 5, 6}, {5, 7, 4, 10}), {3, 4, 5, 6, 7, 10})
    lu.assertEquals(candidate({1, 2, 3, 4}, {3, 4, 5, 6}), {1, 2, 3, 4, 5, 6})
    lu.assertEquals(candidate({11, 12, 13, 14}, {13, 15, 16, 17}), {11, 12, 13, 14, 15, 16, 17})
end

os.exit(lu.LuaUnit.run())