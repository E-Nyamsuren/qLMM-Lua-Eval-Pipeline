-- Write a function to convert a date of yyyy-mm-dd format to dd-mm-yyyy format.
local function change_date_format(dt)
	local y, m, d = dt:match("(%d%d%d%d)-(%d%d)-(%d%d)")
	return d .. "-" .. m .. "-" .. y
end

lu = require('luaunit')

function test_humaneval()
local candidate = change_date_format
    lu.assertEquals(candidate('2026-01-02'), '02-01-2026')
    lu.assertEquals(candidate('2020-11-13'), '13-11-2020')
    lu.assertEquals(candidate('2021-04-26'), '26-04-2021')
end

os.exit(lu.LuaUnit.run())