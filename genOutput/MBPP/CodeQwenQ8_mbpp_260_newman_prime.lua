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
    
    local function nsw_prime(n)
        if n == 1 then
            return 1
        elseif n == 2 then
            return 2
        else
            local a = nsw_prime(n - 1)
            local b = nsw_prime(n - 2)
            return 2 * a + b
        end
    end
    
    local count = 0
    local i = 1
    while true do
        local p = nsw_prime(i)
        if is_prime(p) then
            count = count + 1
            if count == n then
                return p
            end
        end
        i = i + 1
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())