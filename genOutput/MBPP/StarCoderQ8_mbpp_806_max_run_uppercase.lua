-- Write a function to find maximum run of uppercase characters in the given string.
local function max_run_uppercase(test_str)
	local max_run = 0
	local current_run = 0
	local last_char = nil

lu = require('luaunit')

function test_humaneval()
local candidate = max_run_uppercase
    lu.assertEquals(candidate('GeMKSForGERksISBESt'), 5)
    lu.assertEquals(candidate('PrECIOusMOVemENTSYT'), 6)
    lu.assertEquals(candidate('GooGLEFluTTER'), 4)
end

os.exit(lu.LuaUnit.run())