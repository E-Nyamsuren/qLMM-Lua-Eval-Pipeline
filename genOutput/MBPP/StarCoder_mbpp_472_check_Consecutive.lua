-- Write a luathon function to check whether the given table contains consecutive numbers or not.
local function check_Consecutive(l)
	local prev = l[1]
	for i = 2, #l do
		if l[i] ~= prev + 1 then
			return false
		end
		prev = l[i]
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