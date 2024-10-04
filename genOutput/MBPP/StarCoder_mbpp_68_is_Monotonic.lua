-- Write a luathon function to check whether the given table is monotonic or not.
local function is_Monotonic(A)
	local n = #A
	local is_increasing = true
	local is_decreasing = true
	for i = 1, n - 1 do
		if A[i] > A[i + 1] then
			is_increasing = false
		end
		if A[i] < A[i + 1] then
			is_decreasing = false
		end
	end
	return is_increasing or is_decreasing
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Monotonic
    lu.assertEquals(candidate({6, 5, 4, 4}), true)
    lu.assertEquals(candidate({1, 2, 2, 3}), true)
    lu.assertEquals(candidate({1, 3, 2}), false)
end

os.exit(lu.LuaUnit.run())