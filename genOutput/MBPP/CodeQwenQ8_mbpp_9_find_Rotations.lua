-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
    -- Your code here
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Rotations
    lu.assertEquals(candidate('aaaa'), 1)
    lu.assertEquals(candidate('ab'), 2)
    lu.assertEquals(candidate('abc'), 3)
end

os.exit(lu.LuaUnit.run())