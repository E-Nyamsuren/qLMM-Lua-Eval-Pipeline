-- Write a function to check if the given integer is a prime number.
local function prime_num(num)
    if num <= 1 then
        return false
    elseif num <= 3 then
        return true
    elseif num % 2 == 0 or num % 3 == 0 then
        return false
    end
    local i = 5
    while i * i <= num do
        if num % i == 0 or num % (i + 2) == 0 then
            return false
        end
        i = i + 6
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