-- Write a luathon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
local function count_Primes_nums(n)
    if n <= 2 then return 0 end
    local count = 0
    for i = 2, n do
        if is_prime(i) then count = count + 1 end
    end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_Primes_nums
    lu.assertEquals(candidate(5), 2)
    lu.assertEquals(candidate(10), 4)
    lu.assertEquals(candidate(100), 25)
end

os.exit(lu.LuaUnit.run())