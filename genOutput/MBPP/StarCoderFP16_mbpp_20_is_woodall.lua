-- Write a function to check if the given number is woodball or not.
local function is_woodall(x)
	if x == 1 then
		return true
	end
	if x == 2 then
		return true
	end
	if x == 3 then
		return true
	end
	if x == 5 then
		return true
	end
	if x == 7 then
		return true
	end
	if x == 11 then
		return true
	end
	if x == 13 then
		return true
	end
	if x == 17 then
		return true
	end
	if x == 19 then
		return true
	end
	if x == 23 then
		return true
	end
	if x == 29 then
		return true
	end
	if x == 31 then
		return true
	end
	if x == 37 then
		return true
	end
	if x == 41 then
		return true
	end
	if x == 43 then
		return true
	end
	if x == 47 then
		return true
	end
	if x == 53 then
		return true
	end
	if x == 59 then
		return true
	end
	if x == 61 then
		return true
	end
	if x == 67 then
		return true
	end
	if x == 71 then
		return true
	end
	if x == 73 then
		return true
	end
	if x == 79 then
		return true
	end
	if x == 83 then
		return true
	end
	if x == 89 then
		return true
	end
	if x == 97 then
		return true
	end
	if x == 101 then
		return true
	end
	if x == 103 then
		return true
	end
	if x == 107 then
		return true
	end
	if x == 109 then
		return true
	end
	if x == 1

lu = require('luaunit')

function test_humaneval()
local candidate = is_woodall
    lu.assertEquals(candidate(383), true)
    lu.assertEquals(candidate(254), false)
    lu.assertEquals(candidate(200), false)
end

os.exit(lu.LuaUnit.run())