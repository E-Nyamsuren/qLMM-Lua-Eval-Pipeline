-- Complete the function that takes two integers and returns 
-- the product of their unit digits.
-- Assume the input is always valid.
-- Examples:
-- >>> multiply(148, 412)
-- 16
-- >>> multiply(19, 28)
-- 72
-- >>> multiply(2020, 1851)
-- 0
-- >>> multiply(14, -15)
-- 20
local function multiply(a, b)
  local unit_a = a % 10
  local unit_b = b % 10
  return unit_a * unit_b
end

lu = require('luaunit')

function test_humaneval()
local candidate = multiply
    lu.assertEquals(candidate(148, 412), 16)
    lu.assertEquals(candidate(19, 28), 72)
    lu.assertEquals(candidate(2020, 1851), 0)
    lu.assertEquals(candidate(14, -15), 20)
    lu.assertEquals(candidate(76, 67), 42)
    lu.assertEquals(candidate(17, 27), 49)
    lu.assertEquals(candidate(0, 1), 0)
    lu.assertEquals(candidate(0, 0), 0)
end

os.exit(lu.LuaUnit.run())