-- Write a function to check whether the given string is starting with a vowel or not using regex.
local function check_str(string)
	local pattern = "^[aeiouAEIOU]"
	if string.match(string, pattern) then
		print("The string starts with a vowel")
	else
		print("The string does not start with a vowel")
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_str
    lu.assertEquals(candidate('annie'), true)
    lu.assertEquals(candidate('dawood'), false)
    lu.assertEquals(candidate('Else'), true)
end

os.exit(lu.LuaUnit.run())