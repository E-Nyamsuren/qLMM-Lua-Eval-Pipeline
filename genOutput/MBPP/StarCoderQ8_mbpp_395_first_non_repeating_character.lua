-- Write a luathon function to find the first non-repeated character in a given string.
local function first_non_repeating_character(str1)
	local count = {}
	for i = 1, #str1 do
		count[str1:sub(i, i)] = (count[str1:sub(i, i)] or 0) + 1
	end
	for i = 1, #str1 do
		if count[str1:sub(i, i)] == 1 then
			return str1:sub(i, i)
		end
	end
	return nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = first_non_repeating_character
    lu.assertEquals(candidate('abcabc'), None)
    lu.assertEquals(candidate('abc'), 'a')
    lu.assertEquals(candidate('ababc'), 'c')
end

os.exit(lu.LuaUnit.run())