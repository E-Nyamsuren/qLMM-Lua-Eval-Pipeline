-- Write a function to find the nth tetrahedral number.
local function tetrahedral_number(n)
	return (n * (n + 1) * (n + 2) * (n + 3)) / 24
end

lu = require('luaunit')

function test_humaneval()
local candidate = tetrahedral_number
    lu.assertEquals(candidate(5), 35)
    lu.assertEquals(candidate(6), 56)
    lu.assertEquals(candidate(7), 84)
end

os.exit(lu.LuaUnit.run())