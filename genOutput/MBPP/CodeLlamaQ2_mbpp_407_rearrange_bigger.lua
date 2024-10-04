-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
    local digits = {}
    local num = 0
    local carry = 0
    local i = 1
    while n > 0 do
        local digit = n % 10
        n = math.floor(n / 10)
        if digit > i then
            carry = 1
        elseif digit < i then
            carry = 0
        end
        i = i + 1
        digits[i] = digit
    end
    if carry == 1 then
        digits[i] = 1
    end
    for i = 1, #digits do
        num = num * 10 + digits[i]
    end
    return num
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())