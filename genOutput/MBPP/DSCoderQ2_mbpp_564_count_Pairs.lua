-- Write a luathon function which takes a table of integers and counts the number of possible unordered pairs where both elements are unequal.
local function count_Pairs(arr, n)
    local count = 0
    local m = {}
    for i = 1, n do
        if arr[i] then
            m[arr[i]] = (m[arr[i]] or 0) + 1
        end
    end
    for i = 1, #m do
        count = count + (m[i] * (m[i] - 1) // 2)
   
	end
    return count
end

lu = require('luaunit')

function test_humaneval()
local candidate = count_Pairs
    lu.assertEquals(candidate({1, 2, 1}, 3), 2)
    lu.assertEquals(candidate({1, 1, 1, 1}, 4), 0)
    lu.assertEquals(candidate({1, 2, 3, 4, 5}, 5), 10)
end

os.exit(lu.LuaUnit.run())