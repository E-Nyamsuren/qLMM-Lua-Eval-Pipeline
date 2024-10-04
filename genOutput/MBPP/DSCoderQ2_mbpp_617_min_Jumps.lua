-- Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
local function min_Jumps(steps, d)
    if d == 0 then
        return 0
    elseif d < 0 or steps < d then
        return -1
    else
        return math.ceil(d / steps)
    end
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Jumps
    lu.assertEquals(candidate({3, 4}, 11), 3.5)
    lu.assertEquals(candidate({3, 4}, 0), 0)
    lu.assertEquals(candidate({11, 14}, 11), 1)
end

os.exit(lu.LuaUnit.run())