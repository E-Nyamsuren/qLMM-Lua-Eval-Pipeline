-- Write a function to check if the given integer is a prime number.
local function prime_num(num)
    if num == 2 or num == 3 then return true end
    if num < 2 or num % 2 == 0 then return false end
    if num < 9 then return true end
    if num % 3 == 0 then return false end
    local r = math.floor(num ^ 0.5)
    local f = 5
    while f <= r do
        if num % f == 0 then return false end
        if num % (f + 2) == 0 then return false end
        f = f + 6
    end
    return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = prime_num
    lu.assertEquals(candidate(13), true)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(-1010), false)
end

os.exit(lu.LuaUnit.run())