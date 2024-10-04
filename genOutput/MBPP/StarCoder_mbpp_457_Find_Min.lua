-- Write a luathon function to find the subtable having minimum length.
local function Find_Min(lst)
	local min_len = math.huge
	local min_table = nil
	for _, v in ipairs(lst) do
		if type(v) == "table" and #v < min_len then
			min_len = #v
			min_table = v
		end
	end
	return min_table
end

lu = require('luaunit')

function test_humaneval()
local candidate = Find_Min
    lu.assertEquals(candidate({{1}, {1, 2}, {1, 2, 3}}), {1})
    lu.assertEquals(candidate({{1, 1}, {1, 1, 1}, {1, 2, 7, 8}}), {1, 1})
    lu.assertEquals(candidate({{'x'}, {'x', 'y'}, {'x', 'y', 'z'}}), {'x'})
end

os.exit(lu.LuaUnit.run())