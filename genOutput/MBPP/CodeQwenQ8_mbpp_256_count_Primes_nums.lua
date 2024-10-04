-- Write a luathon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
local function count_Primes_nums(n)
    local count = 0
    for i = 2, n-1 do
        local isPrime = true
        for j = 2, i-1 do
            if i % j == 0 then
                isPrime = false
                break
            end
        end
        if isPrime then
            count = count + 1
        end
    end
    return count
end
return count_Primes_nums

lu = require('luaunit')

function test_humaneval()
local candidate = count_Primes_nums
    lu.assertEquals(candidate(5), 2)
    lu.assertEquals(candidate(10), 4)
    lu.assertEquals(candidate(100), 25)
end

os.exit(lu.LuaUnit.run())