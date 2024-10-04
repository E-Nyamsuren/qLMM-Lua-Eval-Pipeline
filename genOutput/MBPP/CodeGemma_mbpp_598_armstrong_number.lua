-- Write a function to check whether the given number is armstrong or not.
local function armstrong_number(number)
    local number_string = tostring(number)
    local number_length = string.len(number_string)
    local sum = 0
    for i = 1, number_length do
        local digit = tonumber(string.sub(number_string, i, i))
        sum = sum + digit ^ number_length
    end
    if sum == number then
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