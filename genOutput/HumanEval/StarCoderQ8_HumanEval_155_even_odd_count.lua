-- Given an integer. return a table that has the number of even and odd digits respectively.
-- Example:
--     >>> even_odd_count(-12)
--     {1, 1}
--     >>> even_odd_count(123)
--     {1, 2}
local function even_odd_count(num)
	local even_count = 0
	local odd_count = 0
	local num_str = tostring(num)
	for i = 1, #num_str do
		local digit = tonumber(num_str:sub(i, i))
		if digit % 2 == 0 then
			even_count = even_count + 1
		else
			odd_count = odd_count + 1
		end
	end
	return {even_count, odd_count}
end


lu = require('luaunit')

function test_humaneval()
local candidate = even_odd_count
    lu.assertEquals(candidate(7), {0, 1})
    lu.assertEquals(candidate(-78), {1, 1})
    lu.assertEquals(candidate(3452), {2, 2})
    lu.assertEquals(candidate(346211), {3, 3})
    lu.assertEquals(candidate(-345821), {3, 3})
    lu.assertEquals(candidate(-2), {1, 0})
    lu.assertEquals(candidate(-45347), {2, 3})
    lu.assertEquals(candidate(0), {1, 0})
end

os.exit(lu.LuaUnit.run())