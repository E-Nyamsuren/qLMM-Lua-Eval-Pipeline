-- Write a function to count those characters which have vowels as their neighbors in the given string.
local function count_vowels(test_str)
	local count = 0
	local prev_char = ''
	for i = 1, #test_str do
		local curr_char = test_str:sub(i, i)
		if curr_char == 'a' or curr_char == 'e' or curr_char == 'i' or curr_char == 'o' or curr_char == 'u' then
			if prev_char == curr_char then
				count = count + 1
			end
		end
		prev_char = curr_char
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_vowels
    lu.assertEquals(candidate('bestinstareels'), 7)
    lu.assertEquals(candidate('partofthejourneyistheend'), 12)
    lu.assertEquals(candidate('amazonprime'), 5)
end

os.exit(lu.LuaUnit.run())