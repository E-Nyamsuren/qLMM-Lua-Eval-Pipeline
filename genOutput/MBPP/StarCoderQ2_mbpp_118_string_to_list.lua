-- Write a function to convert a string to a table of strings split on the space character.
local function string_to_list(string)
	local list = {}
	local i = 1
	while true do
		local _, j = string.find(string, "%S+", i)
		if j then
			list[i] = string.sub(string, i, j - 1)
			i = j + 1
		else
			list[i] = string.sub(string, i, -1)
			break
		end
	end
	return list
end

lu = require('luaunit')

function test_humaneval()
local candidate = string_to_list
    lu.assertEquals(candidate('python programming'), {'python', 'programming'})
    lu.assertEquals(candidate('lists tuples strings'), {'lists', 'tuples', 'strings'})
    lu.assertEquals(candidate('write a program'), {'write', 'a', 'program'})
end

os.exit(lu.LuaUnit.run())