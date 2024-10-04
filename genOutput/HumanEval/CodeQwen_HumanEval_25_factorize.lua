-- Return table of prime factors of given integer in the order from smallest to largest.
-- Each of the factors should be tableed number of times corresponding to how many times it appeares in factorization.
-- Input number should be equal to the product of all factors
-- >>> factorize(8)
-- {2, 2, 2}
-- >>> factorize(25)
-- {5, 5}
-- >>> factorize(70)
-- {2, 5, 7}
local function factorize(n)
    local factors = {}
    local i = 2
    while i * i <= n do
        if n % i == 0 then
            table.insert(factors, i)
            n = n / i
        else
            i = i + 1
        end
    end
    if n > 1 then
        table.insert(factors, n)
    end
    return factors
end
print(factorize(8)) -- {2, 2, 2}
print(factorize(25)) -- {5, 5}
print(factorize(70)) -- {2, 5, 7}
print(factorize(100)) -- {2, 2, 5, 5}
print(factorize(49)) -- {7, 7}
print(factorize(1)) -- {}
print(factorize(2)) -- {2}
print(factorize(3)) -- {3}
print(factorize(4)) -- {2, 2}
print(factorize(5)) -- {5}
print(factorize(6)) -- {2, 3}
print(factorize(7)) -- {7}
print(factorize(8)) -- {2, 2, 2}
print(factorize(9)) -- {3, 3}
print(factorize(10)) -- {2, 5}
print(factorize(11)) -- {11}
print(factorize(12)) -- {2, 2, 3}
print(factorize(13)) -- {13}
print(factorize(14)) -- {2, 7}
print(factorize(15)) -- {3, 5}
print(factorize

lu = require('luaunit')

function test_humaneval()
local candidate = factorize
    lu.assertEquals(candidate(2), {2})
    lu.assertEquals(candidate(4), {2, 2})
    lu.assertEquals(candidate(8), {2, 2, 2})
    lu.assertEquals(candidate(57), {3, 19})
    lu.assertEquals(candidate(3249), {3, 3, 19, 19})
    lu.assertEquals(candidate(185193), {3, 3, 3, 19, 19, 19})
    lu.assertEquals(candidate(20577), {3, 19, 19, 19})
    lu.assertEquals(candidate(18), {2, 3, 3})
end

os.exit(lu.LuaUnit.run())