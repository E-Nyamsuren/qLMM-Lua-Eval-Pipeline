-- Write a luathon function to find the subtable having minimum length.
local function Find_Min(lst)
	local min = 0
	local min_index = 0
	for i = 1, #lst do
		if #lst[i] < min then
			min = #lst[i]
			min_index = i
		end
	end
	return min_index
end

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Min
    lu.assertEquals(candidate({{1}, {1, 2}, {1, 2, 3}}), {1})
    lu.assertEquals(candidate({{1, 1}, {1, 1, 1}, {1, 2, 7, 8}}), {1, 1})
    lu.assertEquals(candidate({{'x'}, {'x', 'y'}, {'x', 'y', 'z'}}), {'x'})
end

os.exit(lu.LuaUnit.run())