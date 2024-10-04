-- Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
local function find_length(string)
	local length = 0
	local count = 0
	for i = 1, #string do
		if string:sub(i, i) == "1" then
			count = count + 1
		else
			count = count - 1
		end
		length = math.max(length, count)
	end
	return length
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_length
    lu.assertEquals(candidate('11000010001'), 6)
    lu.assertEquals(candidate('10111'), 1)
    lu.assertEquals(candidate('11011101100101'), 2)
end

os.exit(lu.LuaUnit.run())