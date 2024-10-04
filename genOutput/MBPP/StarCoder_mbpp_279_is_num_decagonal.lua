-- Write a function to find the nth decagonal number.
local function is_num_decagonal(n)
	local root = math.sqrt(10*n + 1)
	return root == math.floor(root)
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_num_decagonal
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(7), 175)
    lu.assertEquals(candidate(10), 370)
end

os.exit(lu.LuaUnit.run())