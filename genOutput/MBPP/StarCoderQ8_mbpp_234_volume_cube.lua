-- Write a function to find the volume of a cube given its side length.
local function volume_cube(l)
	return l * l * l
end

lu = require('luaunit')

function test_humaneval()
local candidate = volume_cube
    lu.assertEquals(candidate(3), 27)
    lu.assertEquals(candidate(2), 8)
    lu.assertEquals(candidate(5), 125)
end

os.exit(lu.LuaUnit.run())