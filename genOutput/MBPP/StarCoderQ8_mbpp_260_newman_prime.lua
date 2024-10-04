-- Write a function to find the nth newman–shanks–williams prime number.
local function newman_prime(n)
	local function is_prime(n)
		if n < 2 then return false end
		for i = 2, math.sqrt(n) do
			if n % i == 0 then return false end
		end
		return true
	end
	local function newman_shanks(n)
		local function is_square(n)
			local root = math.sqrt(n)
			return root == math.floor(root)
		end
		local function is_power_of_two(n)
			return n == 1 or (n % 2 == 0 and is_power_of_two(n / 2))
		end
		if is_square(n) then return false end
		if is_power_of_two(n) then return true end
		local a = 2
		while true do
			local b = a * a - 1
			if is_prime(b) then return true end
			a = a + 1
		end
	end
	local count = 0
	local n = 2
	while count < n do
		if newman_shanks(n) then count = count + 1 end
		n = n + 1
	end
	return n - 1
end


lu = require('luaunit')

function test_humaneval()
local candidate = newman_prime
    lu.assertEquals(candidate(3), 7)
    lu.assertEquals(candidate(4), 17)
    lu.assertEquals(candidate(5), 41)
end

os.exit(lu.LuaUnit.run())