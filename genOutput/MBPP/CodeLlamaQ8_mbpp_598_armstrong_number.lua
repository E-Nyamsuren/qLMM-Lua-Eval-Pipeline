-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
    local number_of_digits = number:len()
    local sum = 0
    for i = 1, number_of_digits do
        local digit = number:sub(i, i)
        sum = sum + digit * digit * digit
    end
    return sum == number
end

lu = require('luaunit')

function test_humaneval()
local candidate = armstrong_number
    lu.assertEquals(candidate(153), true)
    lu.assertEquals(candidate(259), false)
    lu.assertEquals(candidate(4458), false)
end

os.exit(lu.LuaUnit.run())