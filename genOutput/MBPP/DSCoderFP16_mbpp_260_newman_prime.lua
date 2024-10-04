-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
    if n <= 0 then
        return nil
    end

lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())