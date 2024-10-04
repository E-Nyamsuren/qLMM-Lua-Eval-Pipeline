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
    local fib_numbers = {0, 1}
    local prime_numbers = {2}
    local i = 3
    while #prime_numbers < n do
        local fib_next = fib_numbers[#fib_numbers] + fib_numbers[#fib_numbers + 1]
        fib_numbers[#fib_numbers + 1] = fib_next
        if is_prime(fib_next) then
            prime_numbers[#prime_numbers + 1] = fib_next
        end
        i = i + 1
        while not is_prime(i) do
            i = i + 1
        end
    end
    return prime_numbers[n]
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