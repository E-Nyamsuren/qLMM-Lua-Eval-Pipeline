-- Write a function to create the next bigger number by rearranging the digits of a given number.
local function rearrange_bigger(n)
    local digits = tostring(n):split('')
    local max_index = 1
    local max_value = digits[1]
    for i = 2, #digits do
        if digits[i] > max_value then
            max_index = i
            max_value = digits[i]
        end
    end
    local temp = digits[max_index]
    digits[max_index] = digits[1]
    digits[1] = temp
    table.sort(digits, function(a, b)
        return a > b
    end)
    return table.concat(digits)
end

lu = require('luaunit')

function test_humaneval()
local candidate = rearrange_bigger
    lu.assertEquals(candidate(12), 21)
    lu.assertEquals(candidate(10), false)
    lu.assertEquals(candidate(102), 120)
end

os.exit(lu.LuaUnit.run())