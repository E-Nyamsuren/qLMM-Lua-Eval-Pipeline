-- Write a function to convert a table to a string.
local function tup_string(tup1)
	local s = ""
	for i = 1, #tup1 do
		s = s .. tup1[i]
		if i ~= #tup1 then
			s = s .. ", "
		end
	end
	return s
end

lu = require('luaunit')

function test_humaneval()
local candidate = tup_string
    lu.assertEquals(candidate({'e', 'x', 'e', 'r', 'c', 'i', 's', 'e', 's'}), 'exercises')
    lu.assertEquals(candidate({'p', 'y', 't', 'h', 'o', 'n'}), 'python')
    lu.assertEquals(candidate({'p', 'r', 'o', 'g', 'r', 'a', 'm'}), 'program')
end

os.exit(lu.LuaUnit.run())