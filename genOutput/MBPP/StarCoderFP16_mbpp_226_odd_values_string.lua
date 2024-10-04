-- Write a luathon function to remove the characters which have odd index values of a given string.
local function odd_values_string(str)
	local new_str = ""
	for i = 1, #str do
		if i % 2 == 0 then
			new_str = new_str .. str:sub(i, i)
		end
	end
	return new_str
end

lu = require('luaunit')

function test_humaneval()
local candidate = odd_values_string
    lu.assertEquals(candidate('abcdef'), 'ace')
    lu.assertEquals(candidate('python'), 'pto')
    lu.assertEquals(candidate('data'), 'dt')
    lu.assertEquals(candidate('lambs'), 'lms')
end

os.exit(lu.LuaUnit.run())