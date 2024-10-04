-- Write a luathon function to check whether the given table contains consecutive numbers or not.
local function check_Consecutive(l)
	local i = 1
	local j = 2
	while j <= #l do
		if l[i] + 1 == l[j] then
			i = i + 1
			j = j + 1
		else
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = check_Consecutive
    lu.assertEquals(candidate({1, 2, 3, 4, 5}), true)
    lu.assertEquals(candidate({1, 2, 3, 5, 6}), false)
    lu.assertEquals(candidate({1, 2, 1}), false)
end

os.exit(lu.LuaUnit.run())