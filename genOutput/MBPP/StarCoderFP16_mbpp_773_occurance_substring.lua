-- Write a function to find the occurrence and position of the substrings within a string. Return nil if there is no match.
local function occurance_substring(text, pattern)
	local pattern_len = #pattern
	local text_len = #text
	local occurance = 0
	local pos = 0
	for i = 1, text_len do
		if text:sub(i, i) == pattern:sub(1, 1) then
			local j = 1
			while j <= pattern_len do
				if text:sub(i + j - 1, i + j - 1) == pattern:sub(j, j) then
					j = j + 1
				else
					break
				end
			end
			if j == pattern_len then
				occurance = occurance + 1
				pos = i
			end
		end
	end
	if occurance == 0 then
		return nil
	else
		return occurance, pos
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