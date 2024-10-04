-- Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
local function find_literals(text, pattern)
	local start_index = 1
	local end_index = 1
	local match_start_index = 1
	local match_end_index = 1
	local match_text = ""
	local match_found = false
	local pattern_length = #pattern
	local text_length = #text
	while start_index <= text_length do
		if text:sub(start_index, start_index + pattern_length - 1) == pattern then
			match_found = true
			match_start_index = start_index
			match_end_index = start_index + pattern_length
			match_text = text:sub(start_index, start_index + pattern_length - 1)
			break
		end
		start_index = start_index + 1
	end
	return match_found, match_text, match_start_index, match_end_index
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_literals
    lu.assertEquals(candidate('The quick brown fox jumps over the lazy dog.', 'fox'), {'fox', 16, 19})
    lu.assertEquals(candidate('Its been a very crazy procedure right', 'crazy'), {'crazy', 16, 21})
    lu.assertEquals(candidate('Hardest choices required strongest will', 'will'), {'will', 35, 39})
end

os.exit(lu.LuaUnit.run())