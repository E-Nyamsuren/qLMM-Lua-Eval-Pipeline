-- Return median of elements in the table l.
-- >>> median({3, 1, 2, 4, 5})
-- 3
-- >>> median({-10, 4, 6, 1000, 10, 20})
-- 15.0
local function median(l)
	table.sort(l)
	local len = #l
	local mid = len / 2
	if len % 2 == 0 then
		return (l[mid] + l[mid + 1]) / 2
	else
		return l[mid + 1]
	end
end


lu = require('luaunit')

function test_humaneval()
local candidate = median
    lu.assertEquals(candidate({3, 1, 2, 4, 5}), 3)
    lu.assertEquals(candidate({-10, 4, 6, 1000, 10, 20}), 8.0)
    lu.assertEquals(candidate({5}), 5)
    lu.assertEquals(candidate({6, 5}), 5.5)
    lu.assertEquals(candidate({8, 1, 3, 9, 9, 2, 7}), 7)
end

os.exit(lu.LuaUnit.run())