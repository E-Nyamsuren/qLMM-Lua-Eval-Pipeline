-- Write a function to find the maximum absolute product between numbers in pairs of tables within a given table.
local function max_product_tuple(list1)
    local max_product = 0
    for i = 1, #list1 do
        local table1 = list1[i][1]
        local table2 = list1[i][2]
        local product = 0
        for j = 1, #table1 do
            for k = 1, #table2 do
                product = math.max(product, math.abs(table1[j] * table2[k]))
            end
        end
        max_product = math.max(max_product, product)
    end
    return max_product
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_product_tuple
    lu.assertEquals(candidate({{2, 7}, {2, 6}, {1, 8}, {4, 9}}), 36)
    lu.assertEquals(candidate({{10, 20}, {15, 2}, {5, 10}}), 200)
    lu.assertEquals(candidate({{11, 44}, {10, 15}, {20, 5}, {12, 9}}), 484)
end

os.exit(lu.LuaUnit.run())