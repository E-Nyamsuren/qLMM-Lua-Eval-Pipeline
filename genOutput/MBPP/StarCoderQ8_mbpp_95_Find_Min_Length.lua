-- Write a luathon function to find the length of the smallest table in a table of tables.
local function Find_Min_Length(lst)
	local min_length = math.huge
	for i, tbl in ipairs(lst) do
		local length = #tbl
		if length < min_length then
			min_length = length
		end
	end
	return min_length
end

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Min_Length
    lu.assertEquals(candidate({{1}, {1, 2}}), 1)
    lu.assertEquals(candidate({{1, 2}, {1, 2, 3}, {1, 2, 3, 4}}), 2)
    lu.assertEquals(candidate({{3, 3, 3}, {4, 4, 4, 4}}), 3)
end

os.exit(lu.LuaUnit.run())