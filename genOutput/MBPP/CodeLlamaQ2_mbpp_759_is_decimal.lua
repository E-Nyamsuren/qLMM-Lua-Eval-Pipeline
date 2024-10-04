-- Write a function to check whether a given string is a decimal number with a precision of 2.
local function is_decimal(num)
    local num_str = tostring(num)
    local len = #num_str
    if len < 3 then
        return false
    end
    local point_pos = string.find(num_str, "%.", 1, true)
    if point_pos == nil then
        return false
    end
    local point_pos = point_pos + 1
    if point_pos >= len then
        return false
    end
    local tail_len = len - point_pos
    if tail_len < 2 then
        return false
    end
    local tail = string.sub(num_str, point_pos, point_pos + 2)
    return tail == "00" or tail == "01" or tail == "02" or tail == "03" or tail == "04" or tail == "05" or tail == "06" or tail == "07" or tail == "08" or tail == "09"
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