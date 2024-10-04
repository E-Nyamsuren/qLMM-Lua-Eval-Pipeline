-- Write a function to find minimum k records from table table. https://www.geeksforgeeks.org/luathon-find-minimum-k-records-from-table-table/ - in this case a verbatim colua of test cases
local function min_k(test_list, K)
	local min_list = {}
	local min_list_len = 0
	local min_list_len_max = K
	local min_list_len_min = 0
	local min_list_len_mid = 0
	local min_list_len_mid_prev = 0
	local min_list_len_mid_next = 0
	local min_list_len_mid_prev_prev = 0
	local min_list_len_mid_next_next = 0
	local min_list_len_mid_prev_next = 0
	local min_list_len_mid_prev_prev_prev = 0
	local min_list_len_mid_next_next_next = 0
	local min_list_len_mid_prev_next_next = 0
	local min_list_len_mid_prev_prev_next = 0
	local min_list_len_mid_next_next_next_next = 0
	local min_list_len_mid_prev_next_next_next = 0
	local min_list_len_mid_prev_prev_next_next = 0
	local min_list_len_mid_next_next_next_next_next = 0
	local min_list_len_mid_prev_next_next_next_next = 0
	local min_list_len_mid_prev_prev_next_next_next = 0
	local min_list_len_mid_next_next_next_next_next_next = 0
	local min_list_len_mid_prev_next_next_next_next_next = 0
	local min_list_len_mid_prev_prev_next_next_next_next = 0
	local min_list_len_mid_next_next_next_next_next_next_next =

lu = require('luaunit')

function test_humaneval()
local candidate = min_k
    lu.assertEquals(candidate({{'Manjeet', 10}, {'Akshat', 4}, {'Akash', 2}, {'Nikhil', 8}}, 2), {{'Akash', 2}, {'Akshat', 4}})
    lu.assertEquals(candidate({{'Sanjeev', 11}, {'Angat', 5}, {'Akash', 3}, {'Nepin', 9}}, 3), {{'Akash', 3}, {'Angat', 5}, {'Nepin', 9}})
    lu.assertEquals(candidate({{'tanmay', 14}, {'Amer', 11}, {'Ayesha', 9}, {'SKD', 16}}, 1), {{'Ayesha', 9}})
end

os.exit(lu.LuaUnit.run())