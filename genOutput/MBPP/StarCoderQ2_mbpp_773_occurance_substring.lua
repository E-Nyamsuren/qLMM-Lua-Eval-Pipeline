-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
	local pos = 0
	local count = 0
	local index = 1
	while pos ~= -1 do
		pos = string.find(text, pattern, pos+1, true)
		if pos ~= nil then
			count = count + 1
			print("Found at position: ", pos, " and index: ", index)
		end
		index = index + 1
	end
	if count == 0 then
		print("No match found")
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = occurance_substring
    lu.assertEquals(candidate('python programming, python language', 'python'), {'python', 0, 6})
    lu.assertEquals(candidate('python programming,programming language', 'programming'), {'programming', 7, 18})
    lu.assertEquals(candidate('python programming,programming language', 'language'), {'language', 31, 39})
    lu.assertEquals(candidate('c++ programming, c++ language', 'python'), None)
end

os.exit(lu.LuaUnit.run())