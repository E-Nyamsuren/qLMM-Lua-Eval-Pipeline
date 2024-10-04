-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
	local digits = {}
	local count = 0
	local prev = nil
	for i = 1, #tostring(n) do
		local digit = tonumber(string.sub(tostring(n), i, i))
		if prev == nil then
			prev = digit
		elseif prev == digit then
			count = count + 1
		else
			count = 0
		end
		prev = digit
	end
	return count == 0
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())