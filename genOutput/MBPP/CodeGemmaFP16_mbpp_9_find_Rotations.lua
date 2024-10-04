-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
    local n = #str
    local rotations = 0
    local sorted_str = string.sort(str)
    while true do
        local new_str = string.rotate(str, 1)
        rotations = rotations + 1
        if new_str == sorted_str then
            return rotations
        end
    end
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = find_Rotations
    lu.assertEquals(candidate('aaaa'), 1)
    lu.assertEquals(candidate('ab'), 2)
    lu.assertEquals(candidate('abc'), 3)
end

os.exit(lu.LuaUnit.run())