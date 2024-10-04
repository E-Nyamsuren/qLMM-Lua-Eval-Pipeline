
--[[
Calculate the distance between two points A (xa, ya) and B (xb, yb).
Parameters:
- xa (double): x-coordinate of point A.
- ya (double): y-coordinate of point A.
- xb (double): x-coordinate of point B.
- yb (double): y-coordinate of point B.

Returns:
double: The distance between points A and B.
Usage examples:
print(calculate_distance(0, 0, 3, 4)) -- Output: 5
]]--
function calculate_distance(xa, ya, xb, yb)
    local dx = xb - xa
    local dy = yb - ya
    return math.sqrt(dx * dx + dy * dy)
end


lu = require('luaunit')

function testCalculateDistance()
    local candidate = calculate_distance
    lu.assertTrue(math.abs(candidate(0, 0, 3, 4) - 5) < 1e-6)
    lu.assertTrue(math.abs(candidate(0, 0, 0, 0) - 0) < 1e-6)
    lu.assertTrue(math.abs(candidate(-1, -1, 2, 2) - 4.242640687) < 1e-6)
    lu.assertTrue(math.abs(candidate(1.5, 3.9, 4.2, -1.1) - 5.68243) < 1e-6)
    -- print("All test cases passed!")
end

os.exit(lu.LuaUnit.run())