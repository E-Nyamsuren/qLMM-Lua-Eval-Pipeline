-- Write a luathon function to count minimum number of swaps required to convert one binary number represented as a string to another.
local function min_Swaps(str1, str2)
	local count = 0
	local len1 = #str1
	local len2 = #str2
	local i = 1
	local j = 1
	while i <= len1 and j <= len2 do
		if str1:sub(i, i) ~= str2:sub(j, j) then
			count = count + 1
			i = i + 1
			j = j + 1
		else
			i = i + 1
			j = j + 1
		end
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Swaps
    lu.assertEquals(candidate('1101', '1110'), 1)
    lu.assertEquals(candidate('111', '000'), 'Not Possible')
    lu.assertEquals(candidate('111', '110'), 'Not Possible')
end

os.exit(lu.LuaUnit.run())