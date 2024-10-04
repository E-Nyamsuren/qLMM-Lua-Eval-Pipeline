-- Write a function to find the specified number of largest products from two given tables, selecting one factor from each table.
local function large_product(nums1, nums2, N)
  local products = {}
  for i = 1, N do
    local p1 = nums1[i] * nums2[i]
    local p2 = nums1[N - i + 1] * nums2[N - i + 1]
    if p1 > p2 then
      table.insert(products, p1)
    else
      table.insert(products, p2)
    end
  end
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