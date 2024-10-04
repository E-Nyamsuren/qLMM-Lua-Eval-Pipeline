-- Given a table of integers, sort the integers that are between 1 and 9 inclusive,
-- reverse the resulting table, and then replace each digit by its corresponding name from
-- "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine".
-- For example:
-- >>> by_length({2, 1, 1, 4, 5, 8, 2, 3})
-- {'Eight', 'Five', 'Four', 'Three', 'Two', 'Two', 'One', 'One'}
--   If the table is empty, return an empty table:
-- >>> by_length({})
-- {}
--   If the table has any strange number ignore it:
-- >>> by_length({1, -1, 55})
-- {'One'}
local function by_length(arr)
	local result = {}
	for _, v in ipairs(arr) do
		if v >= 1 and v <= 9 then
			table.insert(result, v)
		end
	end
	table.sort(result, function(a, b) return a > b end)
	for i, v in ipairs(result) do
		result[i] = names[v]
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = by_length
    lu.assertEquals(candidate({2, 1, 1, 4, 5, 8, 2, 3}), {'Eight', 'Five', 'Four', 'Three', 'Two', 'Two', 'One', 'One'})
    lu.assertEquals(candidate({}), {})
    lu.assertEquals(candidate({1, -1, 55}), {'One'})
    lu.assertEquals(candidate({1, -1, 3, 2}), {'Three', 'Two', 'One'})
    lu.assertEquals(candidate({9, 4, 8}), {'Nine', 'Eight', 'Four'})
end

os.exit(lu.LuaUnit.run())