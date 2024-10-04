-- Write a function to find nth centered hexagonal number.
local function centered_hexagonal_number(n)
	local i = 1
	local j = 1
	local count = 0
	while count < n do
		local hexagonal = i * (i * 3 - 1) / 2
		local j_hexagonal = j * (j * 3 - 1) / 2
		if hexagonal > j_hexagonal then
			count = count + 1
			i = i + 1
		elseif hexagonal < j_hexagonal then
			count = count + 1
			j = j + 1
		else
			count = count + 1
			i = i + 1
			j = j + 1
		end
	end
	return hexagonal
end


lu = require('luaunit')

function test_humaneval()
local candidate = centered_hexagonal_number
    lu.assertEquals(candidate(10), 271)
    lu.assertEquals(candidate(2), 7)
    lu.assertEquals(candidate(9), 217)
end

os.exit(lu.LuaUnit.run())