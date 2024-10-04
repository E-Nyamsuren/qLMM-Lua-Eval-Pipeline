-- Write a function to extract values between quotation marks from a string.
local function extract_values(text)
	local values = {}
	local i = 1
	while true do
		local start_quote, end_quote = string.find(text, '"', i)
		if not start_quote then break end
		local value = string.sub(text, start_quote + 1, end_quote - 1)
		table.insert(values, value)
		i = end_quote + 1
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