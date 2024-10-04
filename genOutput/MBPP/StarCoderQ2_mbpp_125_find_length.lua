-- Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
local function find_length(string)
	local zeros = 0
	local ones = 0
	local max_diff = 0
	for i = 1, #string do
		if string:sub(i, i) == "0" then
			zeros = zeros + 1
		elseif string:sub(i, i) == "1" then
			ones = ones + 1
		end
		max_diff = math.max(max_diff, zeros - ones)
	end
	return max_diff
end


lu = require('luaunit')

function test_humaneval()
local candidate = find_length
    lu.assertEquals(candidate('11000010001'), 6)
    lu.assertEquals(candidate('10111'), 1)
    lu.assertEquals(candidate('11011101100101'), 2)
end

os.exit(lu.LuaUnit.run())