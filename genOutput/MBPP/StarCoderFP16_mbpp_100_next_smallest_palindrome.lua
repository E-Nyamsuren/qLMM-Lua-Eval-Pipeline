-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
	local num_str = tostring(num)
	local num_len = #num_str
	local mid_idx = math.floor(num_len / 2)
	local mid_idx_plus_one = mid_idx + 1
	local mid_idx_minus_one = mid_idx - 1
	local mid_idx_plus_one_str = num_str:sub(mid_idx_plus_one, mid_idx_plus_one)
	local mid_idx_minus_one_str = num_str:sub(mid_idx_minus_one, mid_idx_minus_one)
	local mid_idx_plus_one_num = tonumber(mid_idx_plus_one_str)
	local mid_idx_minus_one_num = tonumber(mid_idx_minus_one_str)
	local mid_idx_plus_one_num_str = tostring(mid_idx_plus_one_num)
	local mid_idx_minus_one_num_str = tostring(mid_idx_minus_one_num)
	local mid_idx_plus_one_num_len = #mid_idx_plus_one_num_str
	local mid_idx_minus_one_num_len = #mid_idx_minus_one_num_str
	local mid_idx_plus_one_num_len_half = math.floor(mid_idx_plus_one_num_len / 2)
	local mid_idx_minus_one_num_len_half = math.floor(mid_idx_minus_one_num_len / 2)
	local mid_idx_plus_one_num_len_half_plus_one = mid_idx_plus_one_num_len_half + 1
	local mid_idx_minus_one_num_len_half_plus_one = mid_idx_minus_one_num_len_half + 1
	local mid_idx_plus_one_num_len_half_plus_one_str = mid_

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())