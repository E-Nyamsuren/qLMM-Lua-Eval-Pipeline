-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
    local primes = {2, 3}
    local i = 2
    while #primes < n do
        local p = primes[i]
        local q = p + 2
        while q < p * p do
            if q % p == 0 then
                goto continue
            end
            primes[#primes + 1] = q
            i = i + 1
            ::continue::
            q = q + 2
        end
    end
    return primes[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())