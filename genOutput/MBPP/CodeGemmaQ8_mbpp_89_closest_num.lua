-- Write a function to find the closest smaller number than n.
local function closest_num(N)
    local N_str = tostring(N)
    local N_len = #N_str
    local N_num = tonumber(N_str)
    local N_num_str = tostring(N_num)
    local N_num_len = #N_num_str
    local N_num_arr = {}
    for i = 1, N_num_len do
        N_num_arr[i] = tonumber(string.sub(N_num_str, i, i))
    end
    local N_num_arr_len = #N_num_arr
    local N_num_arr_new = {}
    local N_num_arr_new_len = 0
    local N_num_arr_new_len_max = 0
    local N_num_arr_new_len_max_index = 0
    local N_num_arr_new_len_max_index_arr = {}
    local N_num_arr_new_len_max_index_arr_len = 0
    local N_num_arr_new_len_max_index_arr_len_max = 0
    local N_num_arr_new_len_max_index_arr_len_max_index = 0
    local N_num_arr_new_len_max_index_arr_len_max_index_arr = {}
    local N_num_arr_new_len_max_index_arr_len_max_index_arr_len = 0
    local N_num_arr_new_len_max_index_arr_len_max_index_arr_len_max = 0
    local N_num_arr_new_len_max_index_arr_len_max_index_arr_len_max_index = 0
    local N_num_arr_new_len_max_index_arr_len_max_index_arr_len_max_index_arr = {}
    local N_num_arr_new_len_max_index_arr_len_max_index_arr_len

lu = require('luaunit')

function test_humaneval()
local candidate = closest_num
    lu.assertEquals(candidate(11), 10)
    lu.assertEquals(candidate(7), 6)
    lu.assertEquals(candidate(12), 11)
end

os.exit(lu.LuaUnit.run())