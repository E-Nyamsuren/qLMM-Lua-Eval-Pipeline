-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
	local result = {}
	for i = 1, n do
		if i == 1 or i == 2 or i == 3 or i == 5 or i == 7 or i == 11 or i == 13 or i == 17 or i == 19 or i == 23 or i == 29 or i == 31 or i == 37 or i == 41 or i == 43 or i == 47 or i == 53 or i == 59 or i == 61 or i == 67 or i == 71 or i == 73 or i == 79 or i == 83 or i == 89 or i == 97 then
			table.insert(result, i)
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())