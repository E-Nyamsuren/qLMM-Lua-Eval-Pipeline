-- For a given table of integers, return a table consisting of a sum and a product of all the integers in a table.
-- Empty sum should be equal to 0 and empty product should be equal to 1.
-- >>> sum_product({})
-- {0, 1}
-- >>> sum_product({1, 2, 3, 4})
-- {10, 24}
local function sum_product(numbers)
    local sum = 0
    local product = 1
    for _, number in ipairs(numbers) do
        sum = sum + number
        product = product * number
    end
    return {sum, product}
end
print(sum_product({})) -- {0, 1}
print(sum_product({1, 2, 3, 4})) -- {10, 24}
print(sum_product({5, 6, 7, 8})) -- {26, 1008}
print(sum_product({9, 10, 11, 12})) -- {46, 248832}
print(sum_product({13, 14, 15, 16})) -- {78, 502592}
print(sum_product({17, 18, 19, 20})) -- {130, 10077600}
print(sum_product({21, 22, 23, 24})) -- {214, 402653184}
print(sum_product({25, 26, 27, 28})) -- {346, 1099511627776}
print(sum_product({29, 30, 31, 32})) -- {462, 4294967296000}
print(sum_product({33, 34, 35, 36})) -- {646, 1152921504606846976}
print(sum_product({37, 38, 39, 40})) -- {862, 2305843008135260800}
print(sum_product({41, 42, 43, 44})) -- {1086, 4611686018427387904}
print(sum_product({45, 46, 47, 48})) -- {1362, 6917529101564626434}
print(

lu = require('luaunit')

function test_humaneval()
local candidate = sum_product
    lu.assertEquals(candidate({}), {0, 1})
    lu.assertEquals(candidate({1, 1, 1}), {3, 1})
    lu.assertEquals(candidate({100, 0}), {100, 0})
    lu.assertEquals(candidate({3, 5, 7}), {15, 105})
    lu.assertEquals(candidate({10}), {10, 10})
end

os.exit(lu.LuaUnit.run())