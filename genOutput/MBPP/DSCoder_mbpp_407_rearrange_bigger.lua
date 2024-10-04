-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
    local digits = {}
    local i = 1
    while n > 0 do
        digits[i] = n % 10
        n = math.floor(n / 10)
        i = i + 1
    end
    table.sort(digits)
    local res = 0
    for i = 1, #digits do
        res = res + digits[i] * 10 ^ (i - 1)
    end
    return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())