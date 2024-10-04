-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
    local str_len = #str
    local min_rotations = str_len
    local str_copy = str
    for i = 1, str_len do
        str_copy = str_copy:sub(2, str_len) .. str_copy:sub(1, 1)
        if str_copy == str then
            min_rotations = i
            break
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