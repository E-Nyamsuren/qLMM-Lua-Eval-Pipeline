-- Write a luathon function to check whether the given number can be represented as sum of non-zero powers of 2 or not.
local function is_Sum_Of_Powers_Of_Two(n)
	if n == 0 then
		return false
	end
	local count = 0
	while n > 0 do
		local p = math.log(n) / math.log(2)
		if p ~= math.floor(p) then
			return false
		end
		count = count + 1
		n = n - 2^p
	end
	return count == math.floor(math.log(n) / math.log(2))
end


lu = require('luaunit')

function test_humaneval()
local candidate = is_Sum_Of_Powers_Of_Two
    lu.assertEquals(candidate(10), true)
    lu.assertEquals(candidate(7), false)
    lu.assertEquals(candidate(14), true)
end

os.exit(lu.LuaUnit.run())