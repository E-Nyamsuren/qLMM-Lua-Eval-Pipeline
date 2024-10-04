-- Write a luathon function to count the number of pairs whose xor value is odd.
local function find_Odd_Pair(A, N)
	local count = 0
	for i = 1, N do
		for j = i + 1, N do
			if (A[i] ^ A[j]) % 2 ~= 0 then
				count = count + 1
			end
		end
	end
	return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Odd_Pair
    lu.assertEquals(candidate({5, 4, 7, 2, 1}, 5), 6)
    lu.assertEquals(candidate({7, 2, 8, 1, 0, 5, 11}, 7), 12)
    lu.assertEquals(candidate({1, 2, 3}, 3), 2)
end

os.exit(lu.LuaUnit.run())