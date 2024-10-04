-- Write a function to check whether a table contains the given subtable or not.
local function is_sublist(l, s)
	if #l < #s then return false end
	for i = 1, #l - #s + 1 do
		local sub = {}
		for j = 1, #s do
			sub[j] = l[i + j - 1]
		end
		if table.concat(sub) == table.concat(s) then return true end
	end
	return false
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_sublist
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {3, 7}), false)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {4, 3}), true)
    lu.assertEquals(candidate({2, 4, 3, 5, 7}, {1, 6}), false)
end

os.exit(lu.LuaUnit.run())