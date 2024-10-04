-- Write a function to find the nth number in the newman conway sequence.
local function sequence(n)
	local function conway(n)
		if n == 0 then return 0 end
		local count = 0
		local result = 0
		for i = 1, n do
			if n % i == 0 then
				count = count + 1
				result = result + conway(i)
			end
		end
		return result + count
	end
	return conway(n)
end

lu = require('luaunit')

function test_humaneval()
local candidate = sequence
    lu.assertEquals(candidate(10), 6)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(3), 2)
end

os.exit(lu.LuaUnit.run())