-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
	local a = {0, 1}
	for i = 2, n do
		local b = {}
		for j = 1, #a do
			if a[j] == 0 then
				b[#b + 1] = 1
			else
				b[#b + 1] = 0
			end
		end
		a = b
	end
	return a
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())