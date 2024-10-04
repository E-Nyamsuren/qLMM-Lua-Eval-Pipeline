-- Write a luathon function to find sum of products of all possible subtables of a given table. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subtables/
local function sum_Of_Subarray_Prod(arr)
    local sum = 0
    local prod = 1
    local n = #arr
    for i = 1, n do
        prod = prod * arr[i]
        sum = sum + prod
    end
    return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_Of_Subarray_Prod
    lu.assertEquals(candidate({1, 2, 3}), 20)
    lu.assertEquals(candidate({1, 2}), 5)
    lu.assertEquals(candidate({1, 2, 3, 4}), 84)
end

os.exit(lu.LuaUnit.run())