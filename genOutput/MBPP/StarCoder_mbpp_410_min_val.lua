-- Write a function to find the minimum value in a given heterogeneous table.
local function min_val(listval)
	local min = listval[1]
	for i, v in ipairs(listval) do
		if v < min then
			min = v
		end
	end
	return min
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_val
    lu.assertEquals(candidate({'Python', 3, 2, 4, 5, 'version'}), 2)
    lu.assertEquals(candidate({'Python', 15, 20, 25}), 15)
    lu.assertEquals(candidate({'Python', 30, 20, 40, 50, 'version'}), 20)
end

os.exit(lu.LuaUnit.run())