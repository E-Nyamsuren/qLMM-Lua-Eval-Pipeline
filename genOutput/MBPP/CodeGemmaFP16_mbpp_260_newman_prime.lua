-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
    local function is_prime(num)
        if num <= 1 then
            return false
        end
        for i = 2, math.sqrt(num) do
            if num % i == 0 then
                return false
            end
        end
        return true
    end

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())