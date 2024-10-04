-- Write a luathon function to find the minimum number of rotations (greater than 0) required to get the same string.
local function find_Rotations(str)
    local min_rotations = 0
    local len = string.len(str)
    local temp = str
    local i = 1
    while i <= len do
        local j = 1
        local found = false
        while j <= len do
            if string.sub(temp, j, j) ~= string.sub(str, i, i) then
                found = true
                break
            end
            j = j + 1
        end
        if found then
            min_rotations = min_rotations + 1
            temp = string.sub(temp, j, len) .. string.sub(temp, 1, j - 1)
        else
            break
        end
        i = i + 1
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