-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
	local max_sum = 0
	local max_sum_list = {}
	local max_sum_list_index = 0
	local max_sum_list_index_list = {}
	local max_sum_list_index_list_index = 0
	local max_sum_list_index_list_index_list = {}
	local max_sum_list_index_list_index_list_index = 0
	local max_sum_list_index_list_index_list_index_list = {}
	local max_sum_list_index_list_index_list_index_list_index = 0
	local max_sum_list_index_list_index_list_index_list_index_list = {}
	local max_sum_list_index_list_index_list_index_list_index_list_index = 0
	local max_sum_list_index_list_index_list_index_list_index_list_index_list = {}
	local max_sum_list_index_list_index_list_index_list_index_list_index_list_index = 0
	local max_sum_list_index_list_index_list_index_list_index_list_index_list_index_list = {}
	local max_sum_list_index_list_index_list_index_list_index_list_index_list_index_list_index = 0
	local max_sum_list_index_list_index_list_index_list_index_list_index_list_index_list_index_list = {}
	local max_sum_list_index_list_index_list_index_list_index_list_index_list_index_list_index_list_index = 0
	local max_sum_list_index_list_index_list_index_list_index_list_index_list_index_list

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())