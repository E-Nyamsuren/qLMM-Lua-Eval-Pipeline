-- You are given a table arr of integers and you need to return
-- sum of magnitudes of integers multiplied by product of all signs
-- of each number in the table, represented by 1, -1 or 0.
-- Note: return nil for empty arr.
-- Example:
-- >>> prod_signs({1, 2, 2, -4})
-- 9
-- >>> prod_signs({0, 1})
-- 0
-- >>> prod_signs({})
-- None
local function prod_signs(arr)
  if #arr == 0 then return nil end
  local sum = 0
  local prod = 1
  for i = 1, #arr do
    sum = sum + math.abs(arr[i])
    if arr[i] < 0 then
      prod = prod * -1
    end
  end
  return sum * prod
end

lu = require('luaunit')

function test_humaneval()
local candidate = prod_signs
    lu.assertEquals(candidate({1, 2, 2, -4}), -9)
    lu.assertEquals(candidate({0, 1}), 0)
    lu.assertEquals(candidate({1, 1, 1, 2, 3, -1, 1}), -10)
    lu.assertEquals(candidate({}), None)
    lu.assertEquals(candidate({2, 4, 1, 2, -1, -1, 9}), 20)
    lu.assertEquals(candidate({-1, 1, -1, 1}), 4)
    lu.assertEquals(candidate({-1, 1, 1, 1}), -4)
    lu.assertEquals(candidate({-1, 1, 1, 0}), 0)
end

os.exit(lu.LuaUnit.run())