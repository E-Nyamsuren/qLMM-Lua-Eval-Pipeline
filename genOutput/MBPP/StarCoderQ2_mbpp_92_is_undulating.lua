-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
	local prev = 0
	local curr = 0
	local next = 0
	for i = 1, #n do
		prev = curr
		curr = next
		next = n:sub(i, i)
		if curr ~= next then
			return false
		end
	end
	return true
end

lu = require('luaunit')

function test_humaneval()
local candidate = is_undulating
    lu.assertEquals(candidate(1212121), true)
    lu.assertEquals(candidate(1991), false)
    lu.assertEquals(candidate(121), true)
end

os.exit(lu.LuaUnit.run())