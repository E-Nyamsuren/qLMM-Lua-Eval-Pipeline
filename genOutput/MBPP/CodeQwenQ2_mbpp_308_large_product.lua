-- Write a function to find the specified number of largest products from two given tables, selecting one factor from each table.
local function large_product(nums1, nums2, N)
    -- Initialize an empty table to store the products
    local products = {}
    -- Loop through each number in the first table
    for i, num1 in ipairs(nums1) do
        -- Loop through each number in the second table
        for j, num2 in ipairs(nums2) do
            -- Calculate the product of the two numbers
            local product = num1 * num2
            -- Add the product to the products table
            table.insert(products, product)
        end
    end
    -- Sort the products table in descending order
    table.sort(products, function(a, b) return a > b end)
    -- Initialize an empty table to store the N largest products
    local largest_products = {}
    -- Loop through the first N products in the sorted products table
    for i = 1, N do
        -- Add the product to the largest_products table
        table.insert(largest_products, products[i])
    end
    -- Return the largest_products table
    return largest_products
end

lu = require('luaunit')

function test_humaneval()
local candidate = large_product
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 3), {60, 54, 50})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 4), {60, 54, 50, 48})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 5), {60, 54, 50, 48, 45})
end

os.exit(lu.LuaUnit.run())