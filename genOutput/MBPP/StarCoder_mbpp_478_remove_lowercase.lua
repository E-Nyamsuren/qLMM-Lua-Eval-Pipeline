-- Write a function to remove lowercase substrings from a given string.
local function remove_lowercase(str1)
	local str2 = str1:gsub("[a-z]", "")
	return str2
end

lu = require('luaunit')

function test_humaneval()
local candidate = remove_lowercase
    lu.assertEquals(candidate('PYTHon'), 'PYTH')
    lu.assertEquals(candidate('FInD'), 'FID')
    lu.assertEquals(candidate('STRinG'), 'STRG')
end

os.exit(lu.LuaUnit.run())