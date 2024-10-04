-- Write a function that takes in a table and length n, and generates all combinations (with repetition) of the elements of the table and returns a table with a table for each combination.
local function combinations_colors(l, n)
	local result = {}
	local function helper(t, n, c)
		if n == 0 then
			table.insert(result, c)
		else
			for i = 1, #t do
				helper(t, n - 1, {t[i]})
				for j = 1, n - 1 do
					local new_t = {}
					for k = 1, j - 1 do
						new_t[k] = c[k]
					end
					new_t[j] = t[i]
					for k = j + 1, #c do
						new_t[k] = c[k]
					end
					helper(t, n - 1, new_t)
				end
			end
		end
	end
	helper(l, n, {})
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = combinations_colors
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 1), {{'Red'}, {'Green'}, {'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 2), {{'Red', 'Red'}, {'Red', 'Green'}, {'Red', 'Blue'}, {'Green', 'Green'}, {'Green', 'Blue'}, {'Blue', 'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 3), {{'Red', 'Red', 'Red'}, {'Red', 'Red', 'Green'}, {'Red', 'Red', 'Blue'}, {'Red', 'Green', 'Green'}, {'Red', 'Green', 'Blue'}, {'Red', 'Blue', 'Blue'}, {'Green', 'Green', 'Green'}, {'Green', 'Green', 'Blue'}, {'Green', 'Blue', 'Blue'}, {'Blue', 'Blue', 'Blue'}})
end

os.exit(lu.LuaUnit.run())