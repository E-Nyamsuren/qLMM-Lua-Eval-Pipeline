-- Write a luathon function to get the difference between two tables.
local function Diff(li1, li2)
	local diff = {}
	for i, v in ipairs(li1) do
		if not li2[i] or v ~= li2[i] then
			diff[#diff + 1] = v
		end
	end
	for i, v in ipairs(li2) do
		if not li1[i] or v ~= li1[i] then
			diff[#diff + 1] = v
		end
	end
	return diff
end

lu = require('luaunit')

function test_humaneval()
local candidate = Diff
    lu.assertEquals(candidate({10, 15, 20, 25, 30, 35, 40}, {25, 40, 35}), {10, 20, 30, 15})
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, {6, 7, 1}), {2, 3, 4, 5, 6, 7})
    lu.assertEquals(candidate({1, 2, 3}, {6, 7, 1}), {2, 3, 6, 7})
end

os.exit(lu.LuaUnit.run())