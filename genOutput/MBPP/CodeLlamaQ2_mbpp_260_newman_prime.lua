-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
    if n == 1 then
        return 2
    end
    local p = 3
    while true do
        local s = p * p * p
        if s >= n then
            return p
        end
        p = p + 2
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