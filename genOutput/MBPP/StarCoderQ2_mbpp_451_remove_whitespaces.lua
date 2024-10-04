-- Write a function to remove all whitespaces from the given string.
local function remove_whitespaces(text1)
	local text2 = gmatch(text1, "[^%s]+")()
	return text2
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_whitespaces
    lu.assertEquals(candidate(' Google    Flutter '), 'GoogleFlutter')
    lu.assertEquals(candidate(' Google    Dart '), 'GoogleDart')
    lu.assertEquals(candidate(' iOS    Swift '), 'iOSSwift')
end

os.exit(lu.LuaUnit.run())