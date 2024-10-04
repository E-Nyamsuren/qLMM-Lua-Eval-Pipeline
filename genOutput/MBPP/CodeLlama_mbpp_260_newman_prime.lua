-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
    if n == 1 then
        return 2
    end
    local p = 1
    local i = 1
    while i < n do
        p = p + 2
        local is_prime = true
        for j = 1, i do
            if p % primes[j] == 0 then
                is_prime = false
                break
            end
        end
        if is_prime then
            i = i + 1
        end
    end
    return p
end

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())