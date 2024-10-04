-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
	local sequence = {1, 1}
	local i = 2
	while i < n do
		local last = sequence[#sequence]
		local next = sequence[#sequence - 1]
		if last == next then
			sequence[#sequence + 1] = 1
		else
			sequence[#sequence + 1] = 0
		end
		i = i + 1
	end
	return sequence[#sequence]
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())