-- Checks if given string is a palindrome
-- >>> is_palindrome('')
-- true
-- >>> is_palindrome('aba')
-- true
-- >>> is_palindrome('aaaaa')
-- true
-- >>> is_palindrome('zbcd')
-- false
local function is_palindrome(text)
	local length = #text
	for i = 1, length / 2 do
		if text:sub(i, i) ~= text:sub(length - i + 1, length - i + 1) then
			return false
		end
	end
	return true
end


lu = require('luaunit')

function test_humaneval()
local candidate = is_palindrome
    lu.assertEquals(candidate(''), true)
    lu.assertEquals(candidate('aba'), true)
    lu.assertEquals(candidate('aaaaa'), true)
    lu.assertEquals(candidate('zbcd'), false)
    lu.assertEquals(candidate('xywyx'), true)
    lu.assertEquals(candidate('xywyz'), false)
    lu.assertEquals(candidate('xywzx'), false)
end

os.exit(lu.LuaUnit.run())