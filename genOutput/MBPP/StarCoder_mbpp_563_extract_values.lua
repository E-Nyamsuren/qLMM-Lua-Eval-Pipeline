-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
	local values = {}
	local start = 1
	while true do
		local quote = text:find('"', start)
		if not quote then break end
		local end_quote = text:find('"', quote + 1)
		if not end_quote then break end
		table.insert(values, text:sub(quote + 1, end_quote - 1))
		start = end_quote + 1
	end
	return values
end

lu = require('luaunit')

function test_humaneval()
local candidate = extract_values
    lu.assertEquals(candidate('"Python", "PHP", "Java"'), {'Python', 'PHP', 'Java'})
    lu.assertEquals(candidate('"python","program","language"'), {'python', 'program', 'language'})
    lu.assertEquals(candidate('"red","blue","green","yellow"'), {'red', 'blue', 'green', 'yellow'})
end

os.exit(lu.LuaUnit.run())