-- Write a function to convert all possible convertible elements in a table of tables to floats.
local function list_to_float(test_list)
	local new_list = {}
	for i, v in ipairs(test_list) do
		if type(v) == "table" then
			new_list[i] = list_to_float(v)
		else
			new_list[i] = tonumber(v)
		end
	end
	return new_list
end

lu = require('luaunit')

function test_humaneval()
local candidate = list_to_float
    lu.assertEquals(candidate({{'3', '4'}, {'1', '26.45'}, {'7.32', '8'}, {'4', '8'}}), {{3.0, 4.0}, {1.0, 26.45}, {7.32, 8.0}, {4.0, 8.0}})
    lu.assertEquals(candidate({{'4', '4'}, {'2', '27'}, {'4.12', '9'}, {'7', '11'}}), {{4.0, 4.0}, {2.0, 27.0}, {4.12, 9.0}, {7.0, 11.0}})
    lu.assertEquals(candidate({{'6', '78'}, {'5', '26.45'}, {'1.33', '4'}, {'82', '13'}}), {{6.0, 78.0}, {5.0, 26.45}, {1.33, 4.0}, {82.0, 13.0}})
end

os.exit(lu.LuaUnit.run())