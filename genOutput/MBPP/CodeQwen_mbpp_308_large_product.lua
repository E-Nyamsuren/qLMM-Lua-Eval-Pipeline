-- Write a function to find the specified number of largest products from two given tables, selecting one factor from each table.
local function large_product(nums1, nums2, N)
    -- Sort the tables in descending order
    table.sort(nums1, function(a, b) return a > b end)
    table.sort(nums2, function(a, b) return a > b end)
    
    -- Initialize an empty table to store the products
    local products = {}
    
    -- Iterate through the tables and calculate the products
    for i = 1, N do
        -- Calculate the product of the largest numbers from each table
        local product = nums1[i] * nums2[i]
        
        -- Add the product to the products table
        table.insert(products, product)
    end
    
    -- Return the products table
    return products
end

lu = require('luaunit')

function test_humaneval()
local candidate = large_product
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 3), {60, 54, 50})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 4), {60, 54, 50, 48})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 5), {60, 54, 50, 48, 45})
end

os.exit(lu.LuaUnit.run())