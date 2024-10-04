-- Write a luathon function to find the sum of the largest and smallest value in a given table.
local function big_sum(nums)
  local min = math.huge
  local max = -math.huge
  for _, num in ipairs(nums) do
    if num < min then
      min = num
    end
    if num > max then
      max = num
    end
  end
  return min + max
end

lu = require('luaunit')

function test_humaneval()
local candidate = big_sum
    lu.assertEquals(candidate({1, 2, 3}), 4)
    lu.assertEquals(candidate({-1, 2, 3, 4}), 3)
    lu.assertEquals(candidate({2, 3, 6}), 8)
end

os.exit(lu.LuaUnit.run())