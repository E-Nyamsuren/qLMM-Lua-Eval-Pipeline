-- Write a luathon function to check whether every even index contains even numbers of a given table.
local function even_position(nums)
	local count = 0
	for i = 1, #nums do
		if i % 2 == 0 then
			count = count + 1
		end
	end
	return count == #nums / 2
end

lu = require('luaunit')

function test_humaneval()
local candidate = even_position
    lu.assertEquals(candidate({3, 2, 1}), false)
    lu.assertEquals(candidate({1, 2, 3}), false)
    lu.assertEquals(candidate({2, 1, 4}), true)
end

os.exit(lu.LuaUnit.run())