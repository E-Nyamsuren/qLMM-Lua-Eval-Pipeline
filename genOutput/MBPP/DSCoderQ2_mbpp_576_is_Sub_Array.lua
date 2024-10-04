-- Write a luathon function to check whether a table is subtable of another or not.
local function is_Sub_Array(A, B)
    local m = #A
    local n = #B
    local lookup = {}
    for i = 1, m do
        lookup[A[i]] = true
    end
    for i = 1, n do
        lookup[B[i]] = nil
   
	-- Write a luathon function to check whether a table is subtable of another or not.
	local function is_Sub_Array(A, B)
	    local m = #A
	    local n = #B
	    local lookup = {}
	    for i = 1, m do
	        lookup[A[i]] = true
	    end
	    for i = 1, n do
	        if lookup[B[i]] then
	            return true
	        end
	    end
	    return false
	end

lu = require('luaunit')

function test_humaneval()
local candidate = is_Sub_Array
    lu.assertEquals(candidate({1, 4, 3, 5}, {1, 2}), false)
    lu.assertEquals(candidate({1, 2, 1}, {1, 2, 1}), true)
    lu.assertEquals(candidate({1, 0, 2, 2}, {2, 2, 0}), false)
end

os.exit(lu.LuaUnit.run())