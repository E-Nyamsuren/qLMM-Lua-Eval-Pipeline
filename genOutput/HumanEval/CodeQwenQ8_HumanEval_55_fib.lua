-- Return n-th Fibonacci number.
-- >>> fib(10)
-- 55
-- >>> fib(1)
-- 1
-- >>> fib(8)
-- 21
local function fib(n)
    if n <= 2 then
        return 1
    else
        return fib(n - 1) + fib(n - 2)
    end
end
print(fib(10)) -- 55
print(fib(1)) -- 1
print(fib(8)) -- 21
print(fib(5)) -- 5
print(fib(6)) -- 8
print(fib(7)) -- 13
print(fib(9)) -- 34
print(fib(11)) -- 89
print(fib(12)) -- 144
print(fib(13)) -- 233
print(fib(14)) -- 377
print(fib(15)) -- 610
print(fib(16)) -- 987
print(fib(17)) -- 1597
print(fib(18)) -- 2584
print(fib(19)) -- 4181
print(fib(20)) -- 6765
print(fib(21)) -- 10946
print(fib(22)) -- 17711
print(fib(23)) -- 28657
print(fib(24)) -- 46368
print(fib(25)) -- 75025
print(fib(26)) -- 121393
print(fib(27)) -- 196418
print(fib(28)) -- 317811
print(fib(29)) -- 514229
print(fib(30)) -- 832040
print(fib(31)) -- 1346269
print(fib(32)) -- 2178309
print(fib(33)) -- 3524578
print(fib(34)) -- 5702887
print(fib(35)) -- 9227465
print(fib(36)) -- 14930352
print(fib(37)) -- 24157817
print(fib(38)) -- 39088169
print(fib(39

lu = require('luaunit')

function test_humaneval()
local candidate = fib
    lu.assertEquals(candidate(10), 55)
    lu.assertEquals(candidate(1), 1)
    lu.assertEquals(candidate(8), 21)
    lu.assertEquals(candidate(11), 89)
    lu.assertEquals(candidate(12), 144)
end

os.exit(lu.LuaUnit.run())