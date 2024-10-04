-- Write a function to check if a string represents an integer or not.
local function check_integer(text)
	local i = 1
	local sign = 1
	if text:sub(1, 1) == '-' then
		sign = -1
		i = 2
	end
	for j = i, #text do
		if not tonumber(text:sub(j, j)) then
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_integer
    lu.assertEquals(candidate('python'), false)
    lu.assertEquals(candidate('1'), true)
    lu.assertEquals(candidate('12345'), true)
end

os.exit(lu.LuaUnit.run())