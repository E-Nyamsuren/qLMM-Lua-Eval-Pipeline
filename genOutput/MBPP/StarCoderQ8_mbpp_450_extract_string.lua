-- Write a function to extract specified size of strings from a given table of string values.
local function extract_string(str, l)
	local result = {}
	for i = 1, #str do
		if i <= l then
			result[#result + 1] = str[i]
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_string
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 8), {'practice', 'solution'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 6), {'Python'})
    lu.assertEquals(candidate({'Python', 'list', 'exercises', 'practice', 'solution'}, 9), {'exercises'})
end

os.exit(lu.LuaUnit.run())