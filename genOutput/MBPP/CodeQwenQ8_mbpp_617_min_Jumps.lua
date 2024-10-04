-- Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane.
local function min_Jumps(steps, d)
    -- If the number of steps is less than the distance to reach, return -1
    if steps < d then
        return -1
    end
    -- If the number of steps is equal to the distance to reach, return 1
    if steps == d then
        return 1
    end
    -- If the number of steps is greater than the distance to reach, return the quotient of steps divided by the distance to reach
    return steps // d
end

lu = require('luaunit')

function test_humaneval()
local candidate = min_Jumps
    lu.assertEquals(candidate({3, 4}, 11), 3.5)
    lu.assertEquals(candidate({3, 4}, 0), 0)
    lu.assertEquals(candidate({11, 14}, 11), 1)
end

os.exit(lu.LuaUnit.run())