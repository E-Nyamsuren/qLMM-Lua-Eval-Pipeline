-- Given a table of positive integers x. return a sorted table of all 
-- elements that hasn't any even digit.
-- Note: Returned table should be sorted in increasing order.
-- For example:
-- >>> unique_digits({15, 33, 1422, 1})
-- {1, 15, 33}
-- >>> unique_digits({152, 323, 1422, 10})
-- {}
local function unique_digits(x)
	local result = {}
	for i = 1, #x do
		local digit = x[i]
		local even = false
		for j = 1, #digit do
			if digit[j] % 2 == 0 then
				even = true
				break
			end
		end
		if not even then
			table.insert(result, x[i])
		end
	end
	table.sort(result)
	return result
end


lu = require('luaunit')

function test_humaneval()
local candidate = unique_digits
    lu.assertEquals(candidate({15, 33, 1422, 1}), {1, 15, 33})
    lu.assertEquals(candidate({152, 323, 1422, 10}), {})
    lu.assertEquals(candidate({12345, 2033, 111, 151}), {111, 151})
    lu.assertEquals(candidate({135, 103, 31}), {31, 135})
end

os.exit(lu.LuaUnit.run())