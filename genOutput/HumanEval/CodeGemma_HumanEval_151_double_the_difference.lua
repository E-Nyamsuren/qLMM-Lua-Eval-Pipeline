-- Given a table of numbers, return the sum of squares of the numbers
-- in the table that are odd. Ignore numbers that are negative or not integers.
-- >>> double_the_difference({1, 3, 2, 0})
-- 10
-- >>> double_the_difference({-1, -2, 0})
-- 0
-- >>> double_the_difference({9, -2})
-- 81
-- >>> double_the_difference({0})
-- 0
-- If the input table is empty, return 0.
local function double_the_difference(lst)
  local sum = 0
  for _, v in ipairs(lst) do
    if v % 2 == 1 and v > 0 then
      sum = sum + v * v
    end
  end
  return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = double_the_difference
    lu.assertEquals(candidate({}), 0)
    lu.assertEquals(candidate({5.0, 4.0}), 25)
    lu.assertEquals(candidate({0.1, 0.2, 0.3}), 0)
    lu.assertEquals(candidate({-10.0, -20.0, -30.0}), 0)
    lu.assertEquals(candidate({-1.0, -2.0, 8.0}), 0)
    lu.assertEquals(candidate({0.2, 3.0, 5.0}), 34)
    lu.assertEquals(candidate({-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0}), 165)
end

os.exit(lu.LuaUnit.run())