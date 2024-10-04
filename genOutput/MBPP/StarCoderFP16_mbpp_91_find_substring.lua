-- Write a function to check if a string is present as a substring in a given table of string values.
local function find_substring(str1, sub_str)
	local i = 1
	local j = 1
	local k = 1
	local len1 = string.len(str1)
	local len2 = string.len(sub_str)
	while i <= len1 do
		if str1:sub(i, i) == sub_str:sub(j, j) then
			j = j + 1
			if j > len2 then
				return true
			end
		else
			i = i - (j - 1)
			j = 1
		end
		i = i + 1
	end
	return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_substring
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ack'), true)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'abc'), false)
    lu.assertEquals(candidate({'red', 'black', 'white', 'green', 'orange'}, 'ange'), true)
end

os.exit(lu.LuaUnit.run())