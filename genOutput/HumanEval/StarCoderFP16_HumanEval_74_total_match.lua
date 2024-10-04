-- Write a function that accepts two tables of strings and returns the table that has 
-- total number of chars in the all strings of the table less than the other table.
-- if the two tables have the same number of chars, return the first table.
-- Examples
-- >>> total_match({}, {})
-- {}
-- >>> total_match({'hi', 'admin'}, {'hI', 'Hi'})
-- {'hI', 'Hi'}
-- >>> total_match({'hi', 'admin'}, {'hi', 'hi', 'admin', 'project'})
-- {'hi', 'admin'}
-- >>> total_match({'hi', 'admin'}, {'hI', 'hi', 'hi'})
-- {'hI', 'hi', 'hi'}
-- >>> total_match({'4'}, {'1', '2', '3', '4', '5'})
-- {'4'}
local function total_match(lst1, lst2)
	local result = {}
	local len1 = #lst1
	local len2 = #lst2
	local len = len1
	if len1 > len2 then
		len = len2
	end
	for i = 1, len do
		if string.len(lst1[i]) == string.len(lst2[i]) then
			table.insert(result, lst1[i])
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = total_match
    lu.assertEquals(candidate({}, {}), {})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hi', 'hi'}), {'hi', 'hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hi', 'hi', 'admin', 'project'}), {'hi', 'admin'})
    lu.assertEquals(candidate({'4'}, {'1', '2', '3', '4', '5'}), {'4'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'Hi'}), {'hI', 'Hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'hi', 'hi'}), {'hI', 'hi', 'hi'})
    lu.assertEquals(candidate({'hi', 'admin'}, {'hI', 'hi', 'hii'}), {'hi', 'admin'})
    lu.assertEquals(candidate({}, {'this'}), {})
    lu.assertEquals(candidate({'this'}, {}), {})
end

os.exit(lu.LuaUnit.run())