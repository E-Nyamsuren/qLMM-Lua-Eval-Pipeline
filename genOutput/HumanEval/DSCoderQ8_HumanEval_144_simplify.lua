-- Your task is to implement a function that will simplify the expression
-- x * n. The function returns true if x * n evaluates to a whole number and false
-- otherwise. Both x and n, are string representation of a fraction, and have the following format,
-- <numerator>/<denominator> where both numerator and denominator are positive whole numbers.
-- You can assume that x, and n are valid fractions, and do not have zero as denominator.
-- >>> simplify('1/5', '5/1')
-- true
-- >>> simplify('1/6', '2/1')
-- false
-- >>> simplify('7/10', '10/2')
-- false
local function simplify(x, n)
  local x_num, x_den = x:match("(%d+)/(%d+)")
  local n_num, n_den = n:match("(%d+)/(%d+)")

lu = require('luaunit')

function test_humaneval()
local candidate = simplify
    lu.assertEquals(candidate('1/5', '5/1'), true)
    lu.assertEquals(candidate('1/6', '2/1'), false)
    lu.assertEquals(candidate('5/1', '3/1'), true)
    lu.assertEquals(candidate('7/10', '10/2'), false)
    lu.assertEquals(candidate('2/10', '50/10'), true)
    lu.assertEquals(candidate('7/2', '4/2'), true)
    lu.assertEquals(candidate('11/6', '6/1'), true)
    lu.assertEquals(candidate('2/3', '5/2'), false)
    lu.assertEquals(candidate('5/2', '3/5'), false)
    lu.assertEquals(candidate('2/4', '8/4'), true)
    lu.assertEquals(candidate('2/4', '4/2'), true)
    lu.assertEquals(candidate('1/5', '5/1'), true)
    lu.assertEquals(candidate('1/5', '1/5'), false)
end

os.exit(lu.LuaUnit.run())