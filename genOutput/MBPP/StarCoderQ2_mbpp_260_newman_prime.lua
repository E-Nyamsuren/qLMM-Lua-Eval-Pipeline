-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
	local function is_prime(n)
		if n == 2 then return true end
		for i = 2, math.floor(math.sqrt(n)) do
			if n % i == 0 then return false end
		end
		return true
	end
	local count = 0
	local n = 3
	while count < n do
		if is_prime(n) then count = count + 1 end
		n = n + 2
	end
	return n - 2
end


lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())