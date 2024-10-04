-- Write a function to find the next smallest palindrome of a specified integer, returned as an integer.
local function next_smallest_palindrome(num)
	local s = tostring(num)
	local n = #s
	local a = {}
	for i = 1, n do
		a[i] = s:sub(i, i)
	end
	local function palindrome(a, n)
		for i = 1, n / 2 do
			if a[i] ~= a[n - i + 1] then
				return false
			end
		end
		return true
	end
	local function next_palindrome(a, n)
		local m = n / 2
		for i = m, 1, -1 do
			if a[i] ~= a[n - i + 1] then
				a[i] = a[i] + 1
				for j = i + 1, n do
					a[j] = a[i]
				end
				return a
			end
		end
		return a
	end
	local function next_smallest_palindrome(a, n)
		local b = next_palindrome(a, n)
		local c = b
		while true do
			local d = next_palindrome(b, n)
			if palindrome(d, n) then
				return d
			end
			b = d
		end
	end
	local function next_smallest_palindrome(num)
		local s = tostring(num)
		local n = #s
		local a = {}
		for i = 1, n do
			a[i] = s:sub(i, i)
		end
		local b = next_smallest_palindrome(a, n)
		local c = b
		while true do
			local d = next_smallest_palindrome(b, n)
			if palindrome(d, n) then
				return d
			end
			b = d
		end
	end
end


lu = require('luaunit')

function test_humaneval()
local candidate = next_smallest_palindrome
    lu.assertEquals(candidate(99), 101)
    lu.assertEquals(candidate(1221), 1331)
    lu.assertEquals(candidate(120), 121)
end

os.exit(lu.LuaUnit.run())