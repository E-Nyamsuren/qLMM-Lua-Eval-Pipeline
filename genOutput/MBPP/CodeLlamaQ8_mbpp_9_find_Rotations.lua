-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
    local len = #str
    if len == 0 then
        return 0
    end
    local rotations = 0
    local i = 1
    while i < len do
        if str:sub(i, i) == str:sub(1, 1) then
            rotations = rotations + 1
        end
        i = i + 1
    end
    return rotations
end

lu = require('luaunit')

function test_humaneval()
local candidate = find_Rotations
    lu.assertEquals(candidate('aaaa'), 1)
    lu.assertEquals(candidate('ab'), 2)
    lu.assertEquals(candidate('abc'), 3)
end

os.exit(lu.LuaUnit.run())