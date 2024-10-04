-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
    local sum = 0
    local temp = number
    while temp > 0 do
        local digit = temp % 10
        sum = sum + (digit ^ 3)
        temp = temp // 10
    end
    return number == sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())