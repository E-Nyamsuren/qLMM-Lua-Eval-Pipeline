-- Write a luathon function to convert the given string to lower case.
local function is_lower(string)
	local lower = string:lower()
	return string == lower
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_lower
    lu.assertEquals(candidate('InValid'), 'invalid')
    lu.assertEquals(candidate('TruE'), 'true')
    lu.assertEquals(candidate('SenTenCE'), 'sentence')
end

os.exit(lu.LuaUnit.run())