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
    local function is_prime(num)
        if num < 2 then
            return false
        end
        for i = 2, math.sqrt(num) do
            if num % i == 0 then
                return false
            end
        end
        return true
    end
    
    local function is_fibonacci(num)
        local a, b = 0, 1
        while b < num do
            a, b = b, a + b
        end
        return b == num
    end
    
    local count = 0
    local fib = 0
    while true do
        fib = fib + 1
        if is_fibonacci(fib) and is_prime(fib) then
            count = count + 1
            if count == n then
                return fib
            end
        end
    end
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