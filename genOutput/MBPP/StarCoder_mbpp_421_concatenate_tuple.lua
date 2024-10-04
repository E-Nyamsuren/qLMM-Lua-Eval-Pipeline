-- Write a function to concatenate each element of table by the delimiter.
local function concatenate_tuple(test_tup)
	local result = ""
	for i, v in ipairs(test_tup) do
		result = result .. tostring(v) .. " "
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = concatenate_tuple
    lu.assertEquals(candidate({'ID', 'is', 4, 'UTS'}), 'ID-is-4-UTS')
    lu.assertEquals(candidate({'QWE', 'is', 4, 'RTY'}), 'QWE-is-4-RTY')
    lu.assertEquals(candidate({'ZEN', 'is', 4, 'OP'}), 'ZEN-is-4-OP')
end

os.exit(lu.LuaUnit.run())