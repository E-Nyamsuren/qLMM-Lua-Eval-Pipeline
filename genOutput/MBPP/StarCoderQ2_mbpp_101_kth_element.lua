-- Write a function to find the kth element in the given table using 1-based indexing.
local function kth_element(arr, k)
	-- Write your code here
end


lu = require('luaunit')

function test_humaneval()
local candidate = kth_element
    lu.assertEquals(candidate({12, 3, 5, 7, 19}, 2), 3)
    lu.assertEquals(candidate({17, 24, 8, 23}, 3), 8)
    lu.assertEquals(candidate({16, 21, 25, 36, 4}, 4), 36)
end

os.exit(lu.LuaUnit.run())