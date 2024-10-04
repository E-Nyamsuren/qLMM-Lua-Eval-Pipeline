-- Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
local function max_sum_increasing_subseq(a, n, index, k)
	if index == 0 then
		return a[index]
	end
	local max_sum = a[index]
	for i = index - 1, 0, -1 do
		if a[i] < a[index] and k > i then
			local sum = max_sum_increasing_subseq(a, n, i, k)
			if sum > max_sum then
				max_sum = sum
			end
		end
	end
	return max_sum
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_sum_increasing_subseq
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 4, 6), 11)
    lu.assertEquals(candidate({1, 101, 2, 3, 100, 4, 5}, 7, 2, 5), 7)
    lu.assertEquals(candidate({11, 15, 19, 21, 26, 28, 31}, 7, 2, 4), 71)
end

os.exit(lu.LuaUnit.run())