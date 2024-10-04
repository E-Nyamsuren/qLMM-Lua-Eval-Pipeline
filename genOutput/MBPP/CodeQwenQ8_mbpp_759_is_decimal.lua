-- Write a function to check whether a given string is a decimal number with a precision of 2.
local function is_decimal(num)
    local num_str = tostring(num)
    local decimal_point_index = num_str:find("%.")
    if decimal_point_index then
        local decimal_part = num_str:sub(decimal_point_index + 1)
        if #decimal_part == 2 then
            return true
        end
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