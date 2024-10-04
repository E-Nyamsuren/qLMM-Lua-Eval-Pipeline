-- xs represent coefficients of a polynomial.
-- xs[0] + xs[1] * x + xs[2] * x^2 + ....
--  Return derivative of this polynomial in the same form.
-- >>> derivative({3, 1, 2, 4, 5})
-- {1, 4, 12, 20}
-- >>> derivative({1, 2, 3})
-- {2, 6}
local function derivative(xs)
    local result = {}
    for i = 2, #xs do
        result[i - 1] = xs[i] * i
    end
    return result
end
print(derivative({3, 1, 2, 4, 5})) -- Should print {1, 4, 12, 20}
print(derivative({1, 2, 3})) -- Should print {2, 6}

lu = require('luaunit')

function test_humaneval()
local candidate = derivative
    lu.assertEquals(candidate({3, 1, 2, 4, 5}), {1, 4, 12, 20})
    lu.assertEquals(candidate({1, 2, 3}), {2, 6})
    lu.assertEquals(candidate({3, 2, 1}), {2, 2})
    lu.assertEquals(candidate({3, 2, 1, 0, 4}), {2, 2, 0, 16})
    lu.assertEquals(candidate({1}), {})
end

os.exit(lu.LuaUnit.run())