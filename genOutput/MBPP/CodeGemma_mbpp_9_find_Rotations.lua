-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
    local len = #str
    local min_rotations = len
    local str_copy = str..str
    for i = 1, len do
        local substring = str_copy:sub(i, i+len-1)
        if substring == str then
            min_rotations = math.min(min_rotations, i)
        end
    end
    return min_rotations
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Rotations
    lu.assertEquals(candidate('aaaa'), 1)
    lu.assertEquals(candidate('ab'), 2)
    lu.assertEquals(candidate('abc'), 3)
end

os.exit(lu.LuaUnit.run())