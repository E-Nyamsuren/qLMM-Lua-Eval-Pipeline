-- Write a function to find the specified number of largest products from two given tables, selecting one factor from each table.
local function large_product(nums1, nums2, N)
    local function product(nums)
        local prod = 1
        for _, v in ipairs(nums) do
            prod = prod * v
        end
        return prod
    end
    local function sort(nums)
        table.sort(nums, function(a, b) return a > b end)
    end
    local function find_largest_product(nums1, nums2, N)
        local largest_products = {}
        for i = 1, N do
            largest_products[i] = 0
        end
        for i = 1, #nums1 do
            for j = 1, #nums2 do
                local prod = product({nums1[i], nums2[j]})
                if prod > largest_products[N] then
                    largest_products[N] = prod
                    sort(largest_products)
                end
            end
        end
        return largest_products
    end
    return find_largest_product(nums1, nums2, N)
end

lu = require('luaunit')

function test_humaneval()
local candidate = large_product
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 3), {60, 54, 50})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 4), {60, 54, 50, 48})
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6}, {3, 6, 8, 9, 10, 6}, 5), {60, 54, 50, 48, 45})
end

os.exit(lu.LuaUnit.run())