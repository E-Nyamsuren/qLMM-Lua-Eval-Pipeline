-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
    local digits = {}
    local i = 1
    while n > 0 do
        digits[i] = n % 10
        n = math.floor(n / 10)
        i = i + 1
    end
    local i = #digits
    while i > 1 and digits[i] <= digits[i-1] do
        i = i - 1
    end
    if i > 1 then
        local j = #digits
        while j > i and digits[j] <= digits[i-1] do
            j = j - 1
        end
        digits[i-1], digits[j] = digits[j], digits[i-1]
    else
        return nil
    end
    local m = 0
    for j = 1, #digits do
        m = m * 10 + digits[j]
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