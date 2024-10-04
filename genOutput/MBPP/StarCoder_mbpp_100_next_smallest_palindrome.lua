-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
	local str = tostring(num)
	local len = #str
	local mid = len // 2
	local left = str:sub(1, mid)
	local right = str:sub(mid + 1, len)
	local carry = 1
	for i = mid, 1, -1 do
		if left:byte(i) == right:byte(mid - i + 1) then
			carry = 0
		else
			break
		end
	end
	if carry == 1 then
		return tonumber(left .. right)
	end
	carry = 1
	for i = mid, 1, -1 do
		if left:byte(i) == right:byte(mid - i + 1) then
			carry = 0
		else
			break
		end
	end
	if carry == 1 then
		return tonumber(left .. right)
	end
	carry = 1
	for i = mid, 1, -1 do
		if left:byte(i) == right:byte(mid - i + 1) then
			carry = 0
		else
			break
		end
	end
	if carry == 1 then
		return tonumber(left .. right)
	end
	carry = 1
	for i = mid, 1, -1 do
		if left:byte(i) == right:byte(mid - i + 1) then
			carry = 0
		else
			break
		end
	end
	if carry == 1 then
		return tonumber(left .. right)
	end
	carry = 1
	for i = mid, 1, -1 do
		if left:byte(i) == right:byte(mid - i + 1) then
			carry = 0
		else
			break
		end
	end
	if carry == 1 then
		return tonumber(left .. right)
	end
	carry = 1
	for i = mid, 1, -1 do
		if

lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())