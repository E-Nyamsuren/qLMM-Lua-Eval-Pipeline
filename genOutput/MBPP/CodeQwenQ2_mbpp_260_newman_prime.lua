-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
    local function is_prime(num)
        if num < 2 then return false end
        for i = 2, math.sqrt(num) do
            if num % i == 0 then return false end
        end
        return true
    end
    
    local function newman_shanks_williams(n)
        if n == 1 then return 1 end
        if n == 2 then return 2 end
        local a = 1
        local b = 2
        for i = 3, n do
            local c = a + b
            a = b
            b = c
        end
        return b
    end
    
    local count = 0
    local num = 1
    while count < n do
        num = newman_shanks_williams(num)
        if is_prime(num) then
            count = count + 1
        end
        num = num + 1
    end
    return num - 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())