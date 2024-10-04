-- Write a function to find the n'th star number.
local function find_star_num(n)
	local count = 0
	local num = 1
	while count < n do
		local factors = {}
		for i = 1, math.sqrt(num) do
			if num % i == 0 then
				table.insert(factors, i)
				if i ~= num / i then
					table.insert(factors, num / i)
				end
			end
		end
		if #factors == 2 then
			count = count + 1
		end
		num = num + 1
	end
	return num - 1
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_star_num
    lu.assertEquals(candidate(3), 37)
    lu.assertEquals(candidate(4), 73)
    lu.assertEquals(candidate(5), 121)
end

os.exit(lu.LuaUnit.run())