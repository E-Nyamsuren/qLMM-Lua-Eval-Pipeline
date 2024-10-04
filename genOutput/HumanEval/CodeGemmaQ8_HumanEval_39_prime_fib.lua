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
    local function is_prime(n)
        if n < 2 then
            return false
        end
        for i = 2, math.floor(math.sqrt(n)) do
            if n % i == 0 then
                return false
            end
        end
        return true
    end
    local function fib(n)
        if n == 1 then
            return 1
        elseif n == 2 then
            return 1
        else
            return fib(n - 1) + fib(n - 2)
        end
    end
    local i = 1
    while true do
        local fib_n = fib(i)
        if is_prime(fib_n) then
            if n == 1 then
                return fib_n
            else
                n = n - 1
            end
        end
        i = i + 1
    end
end
</code>

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