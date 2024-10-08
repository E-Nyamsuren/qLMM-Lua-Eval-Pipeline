-- You are given two intervals,
-- where each interval is a pair of integers. For example, interval = (start, end) = (1, 2).
-- The given intervals are closed which means that the interval (start, end)
-- includes both start and end.
-- For each given interval, it is assumed that its start is less or equal its end.
-- Your task is to determine whether the length of intersection of these two 
-- intervals is a prime number.
-- Example, the intersection of the intervals (1, 3), (2, 4) is (2, 3)
-- which its length is 1, which not a prime number.
-- If the length of the intersection is a prime number, return "YES",
-- otherwise, return "NO".
-- If the two intervals don't intersect, return "NO".
-- [input/output] samples:
-- >>> intersection({1, 2}, {2, 3})
-- 'NO'
-- >>> intersection({-1, 1}, {0, 4})
-- 'NO'
-- >>> intersection({-3, -1}, {-5, 5})
-- 'YES'
local function intersection(interval1, interval2)
    local start1, end1 = interval1[1], interval1[2]
    local start2, end2 = interval2[1], interval2[2]
    if start1 > end1 or start2 > end2 then
        return "NO"
    end
    local start = math.max(start1, start2)
    local end_ = math.min(end1, end2)
    if end_ - start < 0 then
        return "NO"
    end
    return "YES"
end
<|file_separator|>

lu = require('luaunit')

function test_humaneval()
local candidate = intersection
    lu.assertEquals(candidate({1, 2}, {2, 3}), 'NO')
    lu.assertEquals(candidate({-1, 1}, {0, 4}), 'NO')
    lu.assertEquals(candidate({-3, -1}, {-5, 5}), 'YES')
    lu.assertEquals(candidate({-2, 2}, {-4, 0}), 'YES')
    lu.assertEquals(candidate({-11, 2}, {-1, -1}), 'NO')
    lu.assertEquals(candidate({1, 2}, {3, 5}), 'NO')
    lu.assertEquals(candidate({1, 2}, {1, 2}), 'NO')
    lu.assertEquals(candidate({-2, -2}, {-3, -2}), 'NO')
end

os.exit(lu.LuaUnit.run())