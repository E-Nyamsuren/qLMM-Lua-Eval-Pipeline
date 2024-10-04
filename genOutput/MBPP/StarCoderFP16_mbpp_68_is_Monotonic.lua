-- Write a luathon function to check whether the given table is monotonic or not.
local function is_Monotonic(A)
	local n = #A
	local i = 1
	local j = 2
	local flag = true
	while i < n and j < n do
		if A[i] < A[j] then
			if A[i] > A[j] then
				flag = false
				break
			end
			i = i + 1
			j = j + 1
		elseif A[i] > A[j] then
			if A[i] < A[j] then
				flag = false
				break
			end
			i = i + 1
			j = j + 1
		else
			i = i + 1
			j = j + 1
		end
	end
	return flag
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Monotonic
    lu.assertEquals(candidate({6, 5, 4, 4}), true)
    lu.assertEquals(candidate({1, 2, 2, 3}), true)
    lu.assertEquals(candidate({1, 3, 2}), false)
end

os.exit(lu.LuaUnit.run())