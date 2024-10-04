-- Write a luathon function to find the length of the longest word.
local function len_log(list1)
	local len = 0
	for i = 1, #list1 do
		if #list1[i] > len then
			len = #list1[i]
		end
	end
	return len
end

lu = require('luaunit')

function test_humaneval()
local candidate = len_log
    lu.assertEquals(candidate({'python', 'PHP', 'bigdata'}), 7)
    lu.assertEquals(candidate({'a', 'ab', 'abc'}), 3)
    lu.assertEquals(candidate({'small', 'big', 'tall'}), 5)
end

os.exit(lu.LuaUnit.run())