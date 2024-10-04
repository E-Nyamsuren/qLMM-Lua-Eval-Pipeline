-- Write a function to get all lucid numbers smaller than or equal to a given integer.
local function get_ludic(n)
	local ludic = {}
	for i = 2, n do
		local is_ludic = true
		for j = 2, math.floor(math.sqrt(i)) do
			if i % j == 0 then
				is_ludic = false
				break
			end
		end
		if is_ludic then
			table.insert(ludic, i)
		end
	end
	return ludic
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_ludic
    lu.assertEquals(candidate(10), {1, 2, 3, 5, 7})
    lu.assertEquals(candidate(25), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25})
    lu.assertEquals(candidate(45), {1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43})
end

os.exit(lu.LuaUnit.run())