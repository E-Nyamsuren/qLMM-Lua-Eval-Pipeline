-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
    local function is_prime(n)
        for i = 2, math.sqrt(n) do
            if n % i == 0 then
                return false
            end
        end
        return true
    end
    local function newman_prime(n)
        local p = 2
        local count = 0
        while count < n do
            if is_prime(p) then
                count = count + 1
            end
            p = p + 1
        end
        return p - 1
    end
    return newman_prime(n)
end
print(newman_prime(10)) -- 113
print(newman_prime(100)) -- 1291
print(newman_prime(1000)) -- 12997
print(newman_prime(10000)) -- 130661
print(newman_prime(100000)) -- 1310711
print(newman_prime(1000000)) -- 13107111
print(newman_prime(10000000)) -- 131071113
print(newman_prime(100000000)) -- 1310711131
print(newman_prime(1000000000)) -- 13107111311
print(newman_prime(10000000000)) -- 131071113113
print(newman_prime(100000000000)) -- 1310711131131
print(newman_prime(1000000000000)) -- 13107111311311
print(newman_prime(1000000000000

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())