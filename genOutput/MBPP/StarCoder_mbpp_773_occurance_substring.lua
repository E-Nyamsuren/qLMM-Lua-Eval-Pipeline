-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
	local pos = 0
	local count = 0
	local start_pos = 1
	while true do
		pos = string.find(text, pattern, start_pos, true)
		if not pos then break end
		count = count + 1
		start_pos = pos + 1
	end
	if count > 0 then
		return count, pos
	else
		return nil
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