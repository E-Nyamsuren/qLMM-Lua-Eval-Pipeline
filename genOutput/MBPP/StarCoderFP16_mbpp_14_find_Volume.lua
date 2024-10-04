-- Write a luathon function to find the volume of a triangular prism.
local function find_Volume(l, b, h)
	return l * b * h
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Volume
    lu.assertEquals(candidate(10, 8, 6), 240)
    lu.assertEquals(candidate(3, 2, 2), 6)
    lu.assertEquals(candidate(1, 2, 1), 1)
end

os.exit(lu.LuaUnit.run())