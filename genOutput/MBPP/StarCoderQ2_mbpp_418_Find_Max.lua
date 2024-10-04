-- Write a luathon function to find the element of a table having maximum length.
local function Find_Max(lst)
	local max_length = 0
	local max_index = 0
	for i = 1, #lst do
		if #lst[i] > max_length then
			max_length = #lst[i]
			max_index = i
		end
	end
	return max_index, max_length
end

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Max
    lu.assertEquals(candidate({{'A'}, {'A', 'B'}, {'A', 'B', 'C'}}), {'A', 'B', 'C'})
    lu.assertEquals(candidate({{1}, {1, 2}, {1, 2, 3}}), {1, 2, 3})
    lu.assertEquals(candidate({{1, 1}, {1, 2, 3}, {1, 5, 6, 1}}), {1, 5, 6, 1})
end

os.exit(lu.LuaUnit.run())