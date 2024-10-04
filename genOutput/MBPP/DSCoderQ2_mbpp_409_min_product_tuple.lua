-- Write a function to find the minimum product from the pairs of tables within a given table.
local function min_product_tuple(list1)
    local min_product = nil
    for i = 1, #list1 do
        for j = i + 1, #list1 do
            if list1[i][2] * list1[j][2] < min_product or min_product == nil then
                min_product = list1[i][2] * list1[j][2]
            end
       
        end
    end
    return min_product
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_product_tuple
    lu.assertEquals(candidate({{2, 7}, {2, 6}, {1, 8}, {4, 9}}), 8)
    lu.assertEquals(candidate({{10, 20}, {15, 2}, {5, 10}}), 30)
    lu.assertEquals(candidate({{11, 44}, {10, 15}, {20, 5}, {12, 9}}), 100)
end

os.exit(lu.LuaUnit.run())