-- Write a function to check whether a given string is a decimal number with a precision of 2.
local function is_decimal(num)
	local num_str = tostring(num)
	local dot_pos = string.find(num_str, "%.")
	if dot_pos == nil then
		return false
	end
	local num_str_after_dot = string.sub(num_str, dot_pos + 1)
	if string.len(num_str_after_dot) > 2 then
		return false
	end
	return true
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