-- Write a function to check if a string represents an integer or not.
local function check_integer(text)
	local n = tonumber(text)
	if n then
		return true
	else
		return false
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_integer
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('1'), true)
    lu.assertEquals(candidate('12345'), true)
end

os.exit(lu.LuaUnit.run())