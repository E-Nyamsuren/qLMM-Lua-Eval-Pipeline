-- Write a function to count those characters which have vowels as their neighbors in the given string.
local function count_vowels(test_str)
	local vowels = {'a', 'e', 'i', 'o', 'u'}
	local count = 0
	for i = 1, #test_str do
		if i ~= 1 and i ~= #test_str then
			if string.find(vowels, test_str:sub(i, i)) and string.find(vowels, test_str:sub(i - 1, i - 1)) then
				count = count + 1
			end
		end
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