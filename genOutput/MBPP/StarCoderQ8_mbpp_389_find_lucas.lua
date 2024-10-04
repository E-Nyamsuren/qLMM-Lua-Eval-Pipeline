-- Write a function to find the n'th lucas number.
local function find_lucas(n)
	if n == 0 then
		return 2
	elseif n == 1 then
		return 1
	else
		local lucas = {2, 1}
		for i = 2, n do
			lucas[i + 1] = lucas[i] + lucas[i - 1]
		end
		return lucas[n + 1]
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_lucas
    lu.assertEquals(candidate(9), 76)
    lu.assertEquals(candidate(4), 7)
    lu.assertEquals(candidate(3), 4)
end

os.exit(lu.LuaUnit.run())