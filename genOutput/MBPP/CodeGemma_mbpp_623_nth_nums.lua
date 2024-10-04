-- Write a function to compute the n-th power of each number in a table.
local function nth_nums(nums, n)
  local res = {}
  for _, num in ipairs(nums) do
    res[#res + 1] = num ^ n
  end
  return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = nth_nums
    lu.assertEquals(candidate({1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, 2), {1, 4, 9, 16, 25, 36, 49, 64, 81, 100})
    lu.assertEquals(candidate({10, 20, 30}, 3), {1000, 8000, 27000})
    lu.assertEquals(candidate({12, 15}, 5), {248832, 759375})
end

os.exit(lu.LuaUnit.run())