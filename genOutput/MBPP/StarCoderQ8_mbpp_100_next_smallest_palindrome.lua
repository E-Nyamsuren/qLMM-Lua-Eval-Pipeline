-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
	local str = tostring(num)
	local len = #str
	local mid = math.floor(len / 2)
	local left = str:sub(1, mid)
	local right = str:sub(mid + 1, len)
	local is_palindrome = left == right:reverse()
	if is_palindrome then
		return tonumber(left .. right)
	end
	local carry = 1
	local i = mid
	while i > 0 do
		local l = str:byte(i)
		local r = str:byte(len - i + 1)
		if l == r then
			i = i - 1
		else
			if l < r then
				right = str:sub(i + 1, len)
				return tonumber(left .. right)
			else
				left = str:sub(1, i - 1)
				carry = 1
				i = mid
			end
		end
	end
	if carry == 1 then
		return tonumber(left .. right)
	end
	return tonumber(left .. right)
end


lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())