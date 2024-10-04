-- Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ...
local function jacobsthal_num(n)
	if n == 0 then
		return 0
	elseif n == 1 then
		return 1
	else
		return 2 * jacobsthal_num(n - 1) + 2 * (n - 1)
	end
end

lu = require('luaunit')

function test_humaneval()
local candidate = jacobsthal_num
    lu.assertEquals(candidate(5), 11)
    lu.assertEquals(candidate(2), 1)
    lu.assertEquals(candidate(4), 5)
    lu.assertEquals(candidate(13), 2731)
end

os.exit(lu.LuaUnit.run())