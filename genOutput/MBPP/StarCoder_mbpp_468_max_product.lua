-- Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that table.
local function max_product(arr)
	local n = #arr
	local dp = {}
	local max_product = -math.huge
	for i = 1, n do
		dp[i] = arr[i]
		for j = 1, i - 1 do
			if arr[j] < arr[i] then
				dp[i] = math.max(dp[i], dp[j] * arr[i])
			end
		end
		max_product = math.max(max_product, dp[i])
	end
	return max_product
end

lu = require('luaunit')

function test_humaneval()
local candidate = max_product
    lu.assertEquals(candidate({3, 100, 4, 5, 150, 6}), 3000)
    lu.assertEquals(candidate({4, 42, 55, 68, 80}), 50265600)
    lu.assertEquals(candidate({10, 22, 9, 33, 21, 50, 41, 60}), 2460)
end

os.exit(lu.LuaUnit.run())