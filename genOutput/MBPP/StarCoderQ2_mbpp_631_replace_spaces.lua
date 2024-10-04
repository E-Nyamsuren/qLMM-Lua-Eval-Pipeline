-- Write a function to replace whitespaces with an underscore and vice versa in a given string.
local function replace_spaces(text)
	local result = ""
	for i = 1, #text do
		local char = text:sub(i, i)
		if char == " " then
			result = result .. "_"
		elseif char == "_" then
			result = result .. " "
		else
			result = result .. char
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = replace_spaces
    lu.assertEquals(candidate('Jumanji The Jungle'), 'Jumanji_The_Jungle')
    lu.assertEquals(candidate('The_Avengers'), 'The Avengers')
    lu.assertEquals(candidate('Fast and Furious'), 'Fast_and_Furious')
end

os.exit(lu.LuaUnit.run())