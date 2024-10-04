-- Write a function to find the maximum absolute product between numbers in pairs of tables within a given table.
local function max_product_tuple(list1)
    local max_product = 0
    for i = 1, #list1 do
        local product = math.abs(list1[i][1] * list1[i][2])
        if product > max_product then
            max_product = product
        end
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