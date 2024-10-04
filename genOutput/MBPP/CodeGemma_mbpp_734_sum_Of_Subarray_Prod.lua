-- Write a luathon function to find sum of products of all possible subtables of a given table. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-subtables/
local function sum_Of_Subarray_Prod(arr)
    local prod = 1
    local sum = 0
    for i = 1, #arr do
        prod = prod * arr[i]
        sum = sum + prod
    end
    return sum
end
print(sum_Of_Subarray_Prod({1,2,3}))
print(sum_Of_Subarray_Prod({1,2,3,4}))
print(sum_Of_Subarray_Prod({1,2,3,4,5}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8,9}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8,9,10}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8,9,10,11}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8,9,10,11,12}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8,9,10,11,12,13}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8,9,10,11,12,13,14}))
print(sum_Of_Subarray_Prod({1,2,3,4,5,6,7,8,9,10,11,

lu = require('luaunit')

function test_humaneval()
local candidate = sum_Of_Subarray_Prod
    lu.assertEquals(candidate({1, 2, 3}), 20)
    lu.assertEquals(candidate({1, 2}), 5)
    lu.assertEquals(candidate({1, 2, 3, 4}), 84)
end

os.exit(lu.LuaUnit.run())