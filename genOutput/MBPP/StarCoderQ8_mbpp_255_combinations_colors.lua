-- Write a function that takes in a table and length n, and generates all combinations (with repetition) of the elements of the table and returns a table with a table for each combination.
local function combinations_colors(l, n)
	local function combinations(t, n)
		local function helper(t, n, a, k)
			if n == 0 then
				return {a}
			elseif n > #t then
				return {}
			else
				local res = {}
				for i = k, #t do
					local tmp = helper(t, n - 1, a + t[i], i + 1)
					for _, v in ipairs(tmp) do
						res[#res + 1] = v
					end
				end
				return res
			end
		end
		return helper(t, n, {}, 1)
	end
	local res = {}
	for _, v in ipairs(combinations(l, n)) do
		res[#res + 1] = v
	end
	return res
end

lu = require('luaunit')

function test_humaneval()
local candidate = combinations_colors
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 1), {{'Red'}, {'Green'}, {'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 2), {{'Red', 'Red'}, {'Red', 'Green'}, {'Red', 'Blue'}, {'Green', 'Green'}, {'Green', 'Blue'}, {'Blue', 'Blue'}})
    lu.assertEquals(candidate({'Red', 'Green', 'Blue'}, 3), {{'Red', 'Red', 'Red'}, {'Red', 'Red', 'Green'}, {'Red', 'Red', 'Blue'}, {'Red', 'Green', 'Green'}, {'Red', 'Green', 'Blue'}, {'Red', 'Blue', 'Blue'}, {'Green', 'Green', 'Green'}, {'Green', 'Green', 'Blue'}, {'Green', 'Blue', 'Blue'}, {'Blue', 'Blue', 'Blue'}})
end

os.exit(lu.LuaUnit.run())