-- Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
local function text_match_two_three(text)
	local a_b_b = string.find(text, "a.*b.*b")
	local a_b_b_b = string.find(text, "a.*b.*b.*b")
	return a_b_b ~= nil or a_b_b_b ~= nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_two_three
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
end

os.exit(lu.LuaUnit.run())