-- You are given a table of numbers.
-- You need to return the sum of squared numbers in the given table,
-- round each element in the table to the upper int(Ceiling) first.
-- Examples:
-- >>> lst({1.0, 2.0, 3.0})
-- 14
-- >>> lst({1.0, 4.0, 9.0})
-- 98
-- >>> lst({1.0, 3.0, 5.0, 7.0})
-- 84
-- >>> lst({1.4, 4.2, 0.0})
-- 29
-- >>> lst({-2.4, 1.0, 1.0})
-- 6
local function sum_squares(lst)
  local sum = 0
  for i = 1, #lst do
    sum = sum + math.ceil(lst[i]) ^ 2
  end
  return sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = sum_squares
    lu.assertEquals(candidate({1.0, 2.0, 3.0}), 14)
    lu.assertEquals(candidate({1.0, 2.0, 3.0}), 14)
    lu.assertEquals(candidate({1.0, 3.0, 5.0, 7.0}), 84)
    lu.assertEquals(candidate({1.4, 4.2, 0.0}), 29)
    lu.assertEquals(candidate({-2.4, 1.0, 1.0}), 6)
    lu.assertEquals(candidate({100.0, 1.0, 15.0, 2.0}), 10230)
    lu.assertEquals(candidate({10000.0, 10000.0}), 200000000)
    lu.assertEquals(candidate({-1.4, 4.6, 6.3}), 75)
    lu.assertEquals(candidate({-1.4, 17.9, 18.9, 19.9}), 1086)
    lu.assertEquals(candidate({0.0}), 0)
    lu.assertEquals(candidate({-1.0}), 1)
    lu.assertEquals(candidate({-1.0, 1.0, 0.0}), 2)
end

os.exit(lu.LuaUnit.run())