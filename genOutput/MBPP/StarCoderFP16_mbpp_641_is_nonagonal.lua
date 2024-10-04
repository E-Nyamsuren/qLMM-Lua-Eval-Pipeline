-- Write a function to find the nth nonagonal number.
local function is_nonagonal(n)
	local i = 1
	while true do
		local nonagonal = nonagonal_number(i)
		if nonagonal == n then
			return true
		elseif nonagonal > n then
			return false
		end
		i = i + 1
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_nonagonal
    lu.assertEquals(candidate(10), 325)
    lu.assertEquals(candidate(15), 750)
    lu.assertEquals(candidate(18), 1089)
end

os.exit(lu.LuaUnit.run())