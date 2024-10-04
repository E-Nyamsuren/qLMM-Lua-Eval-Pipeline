-- Write a function to remove all the words with k length in the given string.
local function remove_length(test_str, K)
	local str_len = string.len(test_str)
	local new_str = ""
	local i = 1
	while i <= str_len do
		local word_len = string.len(test_str:sub(i, i + K - 1))
		if word_len ~= K then
			new_str = new_str .. test_str:sub(i, i + K - 1)
			i = i + K
		else
			i = i + 1
		end
	end
	return new_str
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_length
    lu.assertEquals(candidate('The person is most value tet', 3), 'person is most value')
    lu.assertEquals(candidate('If you told me about this ok', 4), 'If you me about ok')
    lu.assertEquals(candidate('Forces of darkeness is come into the play', 4), 'Forces of darkeness is the')
end

os.exit(lu.LuaUnit.run())