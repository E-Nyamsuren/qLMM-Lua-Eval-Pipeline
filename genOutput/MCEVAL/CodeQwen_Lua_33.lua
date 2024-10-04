
--[[
This problem introduces a new modulo operation, denoted by the symbol "⊕". When calculating x ⊕ y,
if x is not a multiple of y, the result is the remainder of x divided by y. Otherwise, divide x by y
repeatedly until x is no longer a multiple of y, denoting the final value as x'. Then the result is
the remainder of x' divided by y. For example, 4⊕5=4, 20⊕5=4, 100⊕5=4. Given a prime number p, there
will be several queries. For each query, an integer n is given, and you need to compute the value of
n! ⊕ p, where n! is the factorial of n, i.e., the product of all positive integers less than or
equal to n.

Examples:
    >>> newModuloFactorial(3, 7)
    6
]]--
function newModuloFactorial(n, p)
    local result = 1
    for i = 1, n do
        result = (result * i) ⊕ p
    end
    return result
end

lu = require('luaunit')

function testNewModuloFactorial()
    local candidate = newModuloFactorial
    lu.assertTrue(candidate(3, 7) == 6)
    lu.assertTrue(candidate(10, 3) == 1)
    lu.assertTrue(candidate(11, 7) == 4)
    lu.assertTrue(candidate(45, 7) == 1)
    lu.assertTrue(candidate(14, 7) == 2)
    lu.assertTrue(candidate(1919, 10007) == 3152)
    lu.assertTrue(candidate(810, 10007) == 3679)
    lu.assertTrue(candidate(3, 7) == 6)
    lu.assertTrue(candidate(10, 3) == 1)
    lu.assertTrue(candidate(1, 2) == 1)
    lu.assertTrue(candidate(5, 11) == 10)
    lu.assertTrue(candidate(6, 13) == 5)
    lu.assertTrue(candidate(8, 17) == 13)
    lu.assertTrue(candidate(15, 19) == 16)
    lu.assertTrue(candidate(21, 23) == 1)
    lu.assertTrue(candidate(30, 29) == 28)
    lu.assertTrue(candidate(100, 101) == 100)
end

os.exit(lu.LuaUnit.run())