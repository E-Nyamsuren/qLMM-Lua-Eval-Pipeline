-- Write a function to check whether a given string is a decimal number with a precision of 2.
local function is_decimal(num)
    local _, _, dec = string.find(num, "^([+-]?)(%d+%.?%d*)")
    if dec then
        local _, _, precision = string.find(dec, "%.(%d+)")
        return precision == 2
    end
    return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_decimal
    lu.assertEquals(candidate('123.11'), true)
    lu.assertEquals(candidate('e666.86'), false)
    lu.assertEquals(candidate('3.124587'), false)
    lu.assertEquals(candidate('1.11'), true)
    lu.assertEquals(candidate('1.1.11'), false)
end

os.exit(lu.LuaUnit.run())