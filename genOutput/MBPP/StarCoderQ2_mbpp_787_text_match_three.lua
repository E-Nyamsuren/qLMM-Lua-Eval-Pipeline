-- Write a function that matches a string that has an a followed by three 'b'.
local function text_match_three(text)
	local a_b_b_b = string.find(text, "a.*b.*b.*b")
	return a_b_b_b ~= nil
end

lu = require('luaunit')

function test_humaneval()
local candidate = text_match_three
    lu.assertEquals(candidate('ac'), false)
    lu.assertEquals(candidate('dc'), false)
    lu.assertEquals(candidate('abbbba'), true)
    lu.assertEquals(candidate('caacabbbba'), true)
end

os.exit(lu.LuaUnit.run())