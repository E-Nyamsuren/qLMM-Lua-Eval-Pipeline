-- Write a function to check if the given integer is a prime number.
local function prime_num(num)
    if num == 1 then
        return false
    elseif num == 2 then
        return true
    else
        for i = 2, num - 1 do
            if num % i == 0 then
                return false
            end
        end
        return true
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = prime_num
    lu.assertEquals(candidate(13), true)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(-1010), false)
end

os.exit(lu.LuaUnit.run())