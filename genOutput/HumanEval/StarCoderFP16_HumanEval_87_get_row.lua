-- You are given a 2 dimensional data, as a nested tables,
-- which is similar to matrix, however, unlike matrices,
-- each row may contain a different number of columns.
-- Given lst, and integer x, find integers x in the table,
-- and return table of tables, [(x1, y1), (x2, y2) ...] such that
-- each table is a coordinate - (row, columns), starting with 0.
-- Sort coordinates initially by rows in ascending order.
-- Also, sort coordinates of the row by columns in descending order.
-- Examples:
-- >>> get_row({{1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 1, 6}, {1, 2, 3, 4, 5, 1}}, 1)
-- {{0, 0}, {1, 4}, {1, 0}, {2, 5}, {2, 0}}
-- >>> get_row({}, 1)
-- {}
-- >>> get_row({{}, {1}, {1, 2, 3}}, 3)
-- {{2, 2}}
local function get_row(lst, x)
	local result = {}
	for i, v in ipairs(lst) do
		for j, w in ipairs(v) do
			if w == x then
				table.insert(result, {i - 1, j - 1})
			end
		end
	end
	table.sort(result, function(a, b)
		if a[1] == b[1] then
			return a[2] > b[2]
		else
			return a[1] < b[1]
		end
	end)
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = get_row
    lu.assertEquals(candidate({{1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 1, 6}, {1, 2, 3, 4, 5, 1}}, 1), {{0, 0}, {1, 4}, {1, 0}, {2, 5}, {2, 0}})
    lu.assertEquals(candidate({{1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}}, 2), {{0, 1}, {1, 1}, {2, 1}, {3, 1}, {4, 1}, {5, 1}})
    lu.assertEquals(candidate({{1, 2, 3, 4, 5, 6}, {1, 2, 3, 4, 5, 6}, {1, 1, 3, 4, 5, 6}, {1, 2, 1, 4, 5, 6}, {1, 2, 3, 1, 5, 6}, {1, 2, 3, 4, 1, 6}, {1, 2, 3, 4, 5, 1}}, 1), {{0, 0}, {1, 0}, {2, 1}, {2, 0}, {3, 2}, {3, 0}, {4, 3}, {4, 0}, {5, 4}, {5, 0}, {6, 5}, {6, 0}})
    lu.assertEquals(candidate({}, 1), {})
    lu.assertEquals(candidate({{1}}, 2), {})
    lu.assertEquals(candidate({{}, {1}, {1, 2, 3}}, 3), {{2, 2}})
end

os.exit(lu.LuaUnit.run())