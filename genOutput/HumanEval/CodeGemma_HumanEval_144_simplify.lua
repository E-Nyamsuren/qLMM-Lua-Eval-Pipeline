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
    local numerator = tonumber(string.match(x, "%d+"))
    local denominator = tonumber(string.match(x, "/(%d+)"))
    local numerator2 = tonumber(string.match(n, "%d+"))
    local denominator2 = tonumber(string.match(n, "/(%d+)"))
    local numerator3 = numerator * numerator2
    local denominator3 = denominator * denominator2
    if numerator3 % denominator3 == 0 then
        return true
    else
        return false
    end
end
print(simplify('1/5', '5/1'))
print(simplify('1/6', '2/1'))
print(simplify('7/10', '10/2'))


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