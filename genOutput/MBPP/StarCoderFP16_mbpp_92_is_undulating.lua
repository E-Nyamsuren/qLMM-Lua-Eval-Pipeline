-- Write a function to check whether the given number is undulating or not.
local function is_undulating(n)
	local s = tostring(n)
	local l = #s
	local i = 1
	local j = 2
	local k = 3
	while i < l do
		if s:sub(i, i) == s:sub(j, j) then
			return false
		end
		if s:sub(i, i) == s:sub(k, k) then
			return false
		end
		i = i + 1
		j = j + 1
		k = k + 1
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