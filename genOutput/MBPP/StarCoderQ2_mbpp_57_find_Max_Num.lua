-- Write a luathon function to find the largest number that can be formed with the given table of digits.
local function find_Max_Num(arr)
	local max = 0
	for i = 1, #arr do
		max = math.max(max, tonumber(table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({table.concat({

lu = require('luaunit')

function test_humaneval()
local candidate = find_Max_Num
    lu.assertEquals(candidate({1, 2, 3}), 321)
    lu.assertEquals(candidate({4, 5, 6, 1}), 6541)
    lu.assertEquals(candidate({1, 2, 3, 9}), 9321)
end

os.exit(lu.LuaUnit.run())