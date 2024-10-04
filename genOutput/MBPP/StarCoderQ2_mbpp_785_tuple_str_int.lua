-- Write a function to convert table string to integer table.
local function tuple_str_int(test_str)
	local result = {}
	local num_fields = 0
	local field_start = 1
	local field_end = 1
	local field_value = 1
	local field_type = "integer"
	local field_value_type = "integer"
	local field_value_int = 0
	local field_value_str = ""
	local field_value_float = 0.0
	local field_value_bool = false
	local field_value_nil = false
	local field_value_table = {}
	local field_value_cdata = nil
	local field_value_cdata_type = nil
	local field_value_cdata_size = 0
	local field_value_cdata_data = nil
	local field_value_cdata_data_size = 0
	local field_value_cdata_data_size_allocated = 0
	local field_value_cdata_data_size_used = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated = 0
	local field_value_cdata_data_size_used_allocated

lu = require('luaunit')

function test_humaneval()
local candidate = tuple_str_int
    lu.assertEquals(candidate('(7, 8, 9)'), {7, 8, 9})
    lu.assertEquals(candidate('(1, 2, 3)'), {1, 2, 3})
    lu.assertEquals(candidate('(4, 5, 6)'), {4, 5, 6})
    lu.assertEquals(candidate('(7, 81, 19)'), {7, 81, 19})
end

os.exit(lu.LuaUnit.run())