-- Write a luathon function to find the length of the smallest table in a table of tables.
local function Find_Min_Length(lst)
	local min = math.huge
	for i = 1, #lst do
		local len = #lst[i]
		if len < min then
			min = len
		end
	end
	return min
end


lu = require('luaunit')

function test_humaneval()
local candidate = Find_Min_Length
    lu.assertEquals(candidate({{1}, {1, 2}}), 1)
    lu.assertEquals(candidate({{1, 2}, {1, 2, 3}, {1, 2, 3, 4}}), 2)
    lu.assertEquals(candidate({{3, 3, 3}, {4, 4, 4, 4}}), 3)
end

os.exit(lu.LuaUnit.run())