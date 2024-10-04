-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
    local num = number
    local len = tostring(number):len()
    local sum = 0
    while num > 0 do
        digit = num % 10
        sum = sum + (digit ^ len)
        num = num // 10
    end
    if number == sum then
        return true
    else
        return false
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())