-- Task
-- We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c
-- then check if the result string is palindrome.
-- A string is called palindrome if it reads the same backward as forward.
-- You should return a table containing the result string and true/false for the check.
-- Example
-- >>> reverse_delete('abcde', 'ae')
-- {'bcd', false}
-- >>> reverse_delete('abcdef', 'b')
-- {'acdef', false}
-- >>> reverse_delete('abcdedcba', 'ab')
-- {'cdedc', true}
local function reverse_delete(s, c)
	local result = {}
	local t = {}
	for i = 1, #s do
		if not t[s:sub(i, i)] then
			t[s:sub(i, i)] = true
		end
	end
	for i = 1, #c do
		t[c:sub(i, i)] = nil
	end
	for i = 1, #s do
		if t[s:sub(i, i)] then
			result[#result + 1] = s:sub(i, i)
		end
	end
	if result == {} then
		return {'', true}
	end
	local reversed = {}
	for i = #result, 1, -1 do
		reversed[#reversed + 1] = result[i]
	end
	if result == reversed then
		return {table.concat(result), true}
	else
		return {table.concat(result), false}
	end
end


lu = require('luaunit')

function test_humaneval()
local candidate = reverse_delete
    lu.assertEquals(candidate('abcde', 'ae'), {'bcd', false})
    lu.assertEquals(candidate('abcdef', 'b'), {'acdef', false})
    lu.assertEquals(candidate('abcdedcba', 'ab'), {'cdedc', true})
    lu.assertEquals(candidate('dwik', 'w'), {'dik', false})
    lu.assertEquals(candidate('a', 'a'), {'', true})
    lu.assertEquals(candidate('abcdedcba', ''), {'abcdedcba', true})
    lu.assertEquals(candidate('abcdedcba', 'v'), {'abcdedcba', true})
    lu.assertEquals(candidate('vabba', 'v'), {'abba', true})
    lu.assertEquals(candidate('mamma', 'mia'), {'', true})
end

os.exit(lu.LuaUnit.run())