-- prime_fib returns n-th number that is a Fibonacci number and it's also prime.
-- >>> prime_fib(1)
-- 2
-- >>> prime_fib(2)
-- 3
-- >>> prime_fib(3)
-- 5
-- >>> prime_fib(4)
-- 13
-- >>> prime_fib(5)
-- 89
local function prime_fib(n)
    local fib_seq = {0, 1}
    local primes = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97}
    local i = 2
    while #fib_seq < n do
        fib_seq[i + 1] = fib_seq[i] + fib_seq[i - 1]
        i = i + 1
    end
    for _, fib_num in ipairs(fib_seq) do
        for _, prime in ipairs(primes) do
            if fib_num == prime then
                return fib_num
            end
       

lu = require('luaunit')

function test_humaneval()
local candidate = prime_fib
    lu.assertEquals(candidate(1), 2)
    lu.assertEquals(candidate(2), 3)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 13)
    lu.assertEquals(candidate(5), 89)
    lu.assertEquals(candidate(6), 233)
    lu.assertEquals(candidate(7), 1597)
    lu.assertEquals(candidate(8), 28657)
    lu.assertEquals(candidate(9), 514229)
    lu.assertEquals(candidate(10), 433494437)
end

os.exit(lu.LuaUnit.run())