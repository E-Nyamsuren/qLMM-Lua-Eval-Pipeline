-- Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
local function min_Jumps(steps, d)
    local jumps = 0
    local current_pos = 0
    local max_pos = 0
    for i = 1, #steps do
        current_pos = current_pos + steps[i]
        max_pos = math.max(max_pos, current_pos)
        if max_pos >= d then
            jumps = jumps + 1
            current_pos = 0
            max_pos = 0
        end
    end
    return jumps
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Jumps
    lu.assertEquals(candidate({3, 4}, 11), 3.5)
    lu.assertEquals(candidate({3, 4}, 0), 0)
    lu.assertEquals(candidate({11, 14}, 11), 1)
end

os.exit(lu.LuaUnit.run())