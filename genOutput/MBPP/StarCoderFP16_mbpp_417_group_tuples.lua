-- Write a function to find common first element in given table of tables.
local function group_tuples(Input)
	local Output = {}
	for i = 1, #Input do
		for j = 1, #Input[i] do
			Output[j] = Output[j] or {}
			Output[j][i] = Input[i][j]
		end
	end
	return Output
end

lu = require('luaunit')

function test_humaneval()
local candidate = group_tuples
    lu.assertEquals(candidate({{'x', 'y'}, {'x', 'z'}, {'w', 't'}}), {{'x', 'y', 'z'}, {'w', 't'}})
    lu.assertEquals(candidate({{'a', 'b'}, {'a', 'c'}, {'d', 'e'}}), {{'a', 'b', 'c'}, {'d', 'e'}})
    lu.assertEquals(candidate({{'f', 'g'}, {'f', 'g'}, {'h', 'i'}}), {{'f', 'g', 'g'}, {'h', 'i'}})
end

os.exit(lu.LuaUnit.run())