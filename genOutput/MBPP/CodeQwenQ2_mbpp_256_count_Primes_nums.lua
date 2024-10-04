-- Write a luathon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
local function count_Primes_nums(n)
    local function is_Prime(num)
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
    local count = 0
    for i = 2, n do
        if is_Prime(i) then
            count = count + 1
        end
    end
    return count
end
return count_Primes_nums
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_Primes_nums
    lu.assertEquals(candidate(5), 2)
    lu.assertEquals(candidate(10), 4)
    lu.assertEquals(candidate(100), 25)
end

os.exit(lu.LuaUnit.run())