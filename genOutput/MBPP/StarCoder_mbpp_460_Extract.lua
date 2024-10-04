-- Write a luathon function to get the first element of each subtable.
local function Extract(lst)
	local result = {}
	for i, tbl in ipairs(lst) do
		result[i] = tbl[1]
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = Extract
    lu.assertEquals(candidate({{1, 2}, {3, 4, 5}, {6, 7, 8, 9}}), {1, 3, 6})
    lu.assertEquals(candidate({{1, 2, 3}, {4, 5}}), {1, 4})
    lu.assertEquals(candidate({{9, 8, 1}, {1, 2}}), {9, 1})
end

os.exit(lu.LuaUnit.run())