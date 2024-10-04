-- Write a function to find the minimum product from the pairs of tables within a given table.
local function min_product_tuple(list1)
    local min_product = list1[1][1] * list1[1][2]
    local min_tuple = list1[1]
    for i = 2, #list1 do
        local product = list1[i][1] * list1[i][2]
        if product < min_product then
            min_product = product
            min_tuple = list1[i]
        end
    end
    return min_tuple
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_product_tuple
    lu.assertEquals(candidate({{2, 7}, {2, 6}, {1, 8}, {4, 9}}), 8)
    lu.assertEquals(candidate({{10, 20}, {15, 2}, {5, 10}}), 30)
    lu.assertEquals(candidate({{11, 44}, {10, 15}, {20, 5}, {12, 9}}), 100)
end

os.exit(lu.LuaUnit.run())