-- Write a function to find the first adverb and their positions in a given sentence.
local function find_adverb_position(text)
	local adverb_positions = {}
	local adverb_position = 1
	local word_position = 1
	local word = ""
	local adverb = ""
	local is_adverb = false
	for i = 1, #text do
		local char = text:sub(i, i)
		if char == " " then
			if is_adverb then
				adverb_positions[adverb] = adverb_position
				is_adverb = false
			end
			word_position = word_position + 1
			word = ""
		elseif char == "a" or char == "e" or char == "i" or char == "o" or char == "u" then
			if is_adverb then
				adverb = adverb .. char
			else
				word = word .. char
			end
		else
			if is_adverb then
				adverb = adverb .. char
			else
				word = word .. char
			end
		end
		if is_adverb then
			adverb_position = adverb_position + 1
		end
		if char == " " then
			if word == "is" or word == "are" or word == "was" or word == "were" then
				is_adverb = true
			end
		end
	end
	return adverb_positions
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverb_position
    lu.assertEquals(candidate('clearly!! we can see the sky'), {0, 7, 'clearly'})
    lu.assertEquals(candidate('seriously!! there are many roses'), {0, 9, 'seriously'})
    lu.assertEquals(candidate('unfortunately!! sita is going to home'), {0, 13, 'unfortunately'})
end

os.exit(lu.LuaUnit.run())