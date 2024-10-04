-- Write a function to find the maximum sum possible by using the given equation f(n) = max( (f(n/2) + f(n/3) + f(n/4) + f(n/5)), n).
local function get_max_sum(n)
	local dp = {}
	dp[1] = 1
	dp[2] = 2
	dp[3] = 3
	dp[4] = 4
	dp[5] = 5
	for i = 6, n do
		local max_val = dp[i]
		for j = i / 2, i / 3, i / 4, i / 5 do
			if j < 1 then
				break
			end
			max_val = math.max(max_val, dp[j] + dp[i - j])
		end
		dp[i] = max_val
	end
	return dp[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_max_sum
    lu.assertEquals(candidate(60), 106)
    lu.assertEquals(candidate(10), 12)
    lu.assertEquals(candidate(2), 2)
end

os.exit(lu.LuaUnit.run())