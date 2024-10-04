-- Write a function to find the first adverb ending with ly and its positions in a given string.
local function find_adverbs(text)
	local pos = 1
	local found = false
	local result = {}
	while pos do
		local word = text:match("(.-)%s*", pos)
		if word:sub(-3) == "ly" then
			table.insert(result, {word, pos})
		end
		pos = text:find("%s", pos+1)
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_adverbs
    lu.assertEquals(candidate('Clearly, he has no excuse for such behavior.'), '0-7: Clearly')
    lu.assertEquals(candidate('Please handle the situation carefuly'), '28-36: carefuly')
    lu.assertEquals(candidate('Complete the task quickly'), '18-25: quickly')
end

os.exit(lu.LuaUnit.run())