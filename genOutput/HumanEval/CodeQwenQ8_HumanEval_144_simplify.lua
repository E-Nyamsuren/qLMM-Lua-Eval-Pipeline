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
    local x_numerator, x_denominator = x:match('(%d+)/(%d+)')
    local n_numerator, n_denominator = n:match('(%d+)/(%d+)')
    local x_multiplied_n = tonumber(x_numerator) * tonumber(n_numerator) / tonumber(x_denominator) / tonumber(n_denominator)
    return x_multiplied_n == math.floor(x_multiplied_n)
end
print(simplify('1/5', '5/1')) -- true
print(simplify('1/6', '2/1')) -- false
print(simplify('7/10', '10/2')) -- false
print(simplify('1/3', '3/1')) -- true
print(simplify('2/5', '5/2')) -- true
print(simplify('3/7', '7/3')) -- true
print(simplify('4/9', '9/4')) -- true
print(simplify('5/11', '11/5')) -- true
print(simplify('6/13', '13/6')) -- true
print(simplify('7/16', '16/7')) -- true
print(simplify('8/19', '19/8')) -- true
print(simplify('9/22', '22/9')) -- true


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