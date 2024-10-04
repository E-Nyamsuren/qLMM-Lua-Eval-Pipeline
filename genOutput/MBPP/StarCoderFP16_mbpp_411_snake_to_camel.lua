-- Write a function to convert the given snake case string to camel case string.
local function snake_to_camel(word)
	local result = ""
	local is_next_upper = false
	for i = 1, #word do
		local c = word:sub(i, i)
		if c == "_" then
			is_next_upper = true
		else
			if is_next_upper then
				result = result .. c:upper()
				is_next_upper = false
			else
				result = result .. c
			end
		end
	end
	return result
end

lu = require('luaunit')

function test_humaneval()
local candidate = snake_to_camel
    lu.assertEquals(candidate('android_tv'), 'AndroidTv')
    lu.assertEquals(candidate('google_pixel'), 'GooglePixel')
    lu.assertEquals(candidate('apple_watch'), 'AppleWatch')
end

os.exit(lu.LuaUnit.run())