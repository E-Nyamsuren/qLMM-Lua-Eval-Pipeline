-- Write a luathon function to count number of digits in a given string.
local function number_ctr(str)
	local count = 0
	for i = 1, #str do
		if str:sub(i, i) == "0" or str:sub(i, i) == "1" or str:sub(i, i) == "2" or str:sub(i, i) == "3" or str:sub(i, i) == "4" or str:sub(i, i) == "5" or str:sub(i, i) == "6" or str:sub(i, i) == "7" or str:sub(i, i) == "8" or str:sub(i, i) == "9" then
			count = count + 1
		end
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = number_ctr
    lu.assertEquals(candidate('program2bedone'), 1)
    lu.assertEquals(candidate('3wonders'), 1)
    lu.assertEquals(candidate('123'), 3)
    lu.assertEquals(candidate('3wond-1ers2'), 3)
end

os.exit(lu.LuaUnit.run())