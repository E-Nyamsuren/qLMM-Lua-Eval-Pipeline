-- Write a function to find the n'th star number.
local function find_star_num(n)
	local star_num = 1
	local star_num_count = 1
	while star_num_count < n do
		star_num = star_num + 1
		if is_star_num(star_num) then
			star_num_count = star_num_count + 1
		end
	end
	return star_num
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_star_num
    lu.assertEquals(candidate(3), 37)
    lu.assertEquals(candidate(4), 73)
    lu.assertEquals(candidate(5), 121)
end

os.exit(lu.LuaUnit.run())