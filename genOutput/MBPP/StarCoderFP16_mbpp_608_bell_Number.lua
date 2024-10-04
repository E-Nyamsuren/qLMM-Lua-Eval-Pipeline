-- Write a luathon function to find nth bell number.
local function bell_Number(n)
	local bell_Number = {}
	for i = 1, n do
		bell_Number[i] = 0
	end
	bell_Number[1] = 1
	for i = 1, n do
		for j = i, 1, -1 do
			bell_Number[j] = bell_Number[j] + bell_Number[j - 1]
		end
	end
	return bell_Number[n]
end

lu = require('luaunit')

function test_humaneval()
local candidate = bell_Number
    lu.assertEquals(candidate(2), 2)
    lu.assertEquals(candidate(3), 5)
    lu.assertEquals(candidate(4), 15)
end

os.exit(lu.LuaUnit.run())