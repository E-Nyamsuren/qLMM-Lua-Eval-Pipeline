-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
    local digits = {}
    while n > 0 do
        table.insert(digits, n % 10)
        n = math.floor(n / 10)
    end
    table.sort(digits)
    local m = 0
    for i = 1, #digits do
        m = m * 10 + digits[i]
    end
    return m
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())