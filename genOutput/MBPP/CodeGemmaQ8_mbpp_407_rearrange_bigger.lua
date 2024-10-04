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
    local j = 1
    while digits[j] == 0 do
        j = j + 1
    end
    local k = j
    while k < #digits do
        if digits[k] > digits[j] then
            local temp = digits[j]
            digits[j] = digits[k]
            digits[k] = temp
            break
        end
        k = k + 1
    end
    local result = 0
    for i = 1, #digits do
        result = result * 10 + digits[i]
    end
    return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())