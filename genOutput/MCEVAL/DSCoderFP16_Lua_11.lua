
--[[
Determine if two closed intervals intersect.
    Arguments:
    a, b: Representing the first closed interval [a, b] where 0 <= a <= b <= 1000.
    c, d: Representing the second closed interval [c, d] where 0 <= c <= d <= 1000.
    Returns:
    boolean: true if the intervals intersect, false otherwise.
]]
function are_intervals_intersecting(a, b, c, d)
    if a > d or b < c then
        return false
    end
    return true
end

lu = require('luaunit')

function test_are_intervals_intersecting()
    local candidate = are_intervals_intersecting
    lu.assertTrue(candidate(1, 1, 1, 2) == true)
    lu.assertTrue(candidate(3, 5, 2, 6) == true)
    lu.assertTrue(candidate(3, 5, 4, 7) == true)
    lu.assertTrue(candidate(3, 5, 6, 7) == false)
    -- Additional test cases
    lu.assertTrue(candidate(0, 0, 0, 0) == true)
    lu.assertTrue(candidate(1, 3, 2, 4) == true)
    lu.assertTrue(candidate(1, 3, 4, 6) == false)
    lu.assertTrue(candidate(10, 20, 20, 30) == true)
    lu.assertTrue(candidate(10, 20, 21, 30) == false)
    
    -- print("All tests passed.")
end

os.exit(lu.LuaUnit.run())