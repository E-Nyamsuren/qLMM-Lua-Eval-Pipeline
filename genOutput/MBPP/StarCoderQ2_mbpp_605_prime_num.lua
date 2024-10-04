-- Write a function to check if the given integer is a prime number.
local function prime_num(num)
	local is_prime = true
	if num < 2 then
		is_prime = false
	end
	for i = 2, math.floor(math.sqrt(num)) do
		if num % i == 0 then
			is_prime = false
			break
		end
	end
	return is_prime
end

lu = require('luaunit')

function test_humaneval()
local candidate = prime_num
    lu.assertEquals(candidate(13), true)
    lu.assertEquals(candidate(7), true)
    lu.assertEquals(candidate(-1010), false)
end

os.exit(lu.LuaUnit.run())